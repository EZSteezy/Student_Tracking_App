import express from "express";
import pg from "pg";
import cors from "cors";
import dotenv from "dotenv";
dotenv.config();
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
const db = new pg.Pool({ connectionString: process.env.DATABASE_URL, ssl: {rejectUnauthorized: false} });

const app = express();

app.use(express.json());
app.use(cors());

app.get("/api/cohorts", async (req, res, next) => {
  const result = await db.query("SELECT cohorts.*, instructors.lastname AS instructor_id FROM cohorts INNER JOIN instructors ON cohorts.instructor_id = instructors.id").catch(next);
  res.send(result.rows);
});

app.get("/api/cohorts/:id", async (req, res, next) => {
  const result = await db
    .query("SELECT * FROM cohorts WHERE id = $1", [req.params.id])
    .catch(next);

  if (result.rows.length === 0) {
    res.sendStatus(404);
  } else {
    res.send(result.rows);
  }
});

app.get("/api/branches", async (req, res, next) => {
  const result = await db
    .query("SELECT * FROM branch")
    .catch(next);

  if (result.rows.length === 0) {
    res.sendStatus(404);
  } else {
    res.send(result.rows);
  }
});

app.get("/api/cohorts/:cohortId/students", async (req, res, next) => {
  const cohortId = req.params.cohortId;
  const result = await db
    .query(`SELECT students.* FROM students WHERE students.cohort_id = $1`, [cohortId])
    .catch(next);
  if (result.rows.length === 0) {
    res.sendStatus(404);
  } else {
    res.send(result.rows);
  }
});

app.get("/api/students/:studentId", async (req, res, next) => {
  const studentId = req.params.studentId;
  const result = await db
    .query(`SELECT students.* FROM students WHERE students.id = $1`, [studentId])
    .catch(next);
  if (result.rows.length === 0) {
    res.sendStatus(404);
  } else {
    res.send(result.rows);
  }
});

// Route to get all tasks
app.get("/api/appointments", async (req, res, next) =>{
  // const tasks = req.params.tasks
  const result = await db
    .query(`SELECT * FROM appointments`)
    .catch(next)
  if(result.rows.length === 0){
    res.sendStatus(404);
  } else{
    res.send(result.rows)
  }
})

// Route to handle user registration
app.post("/api/register", async (req, res) => {
  try {
    const { email, password } = req.body;
    const hashedPassword = await bcrypt.hash(password, 10); // hashes the password with bcrypt and add 10 extra bits "salt"
    console.log(req.body);

    console.log("Attempting to insert:", email, hashedPassword);
    const result = await db.query("INSERT INTO users (email, password) VALUES ($1, $2)", [email, hashedPassword]);
    console.log('Query result:', result);
    // JSON Web tokens, yay
    const token = jwt.sign({ email }, process.env.JWT_SECRET, { expiresIn: '2h' });
    res.status(200).json({ token });
  } catch (err) {
    console.log(err);
    if (err.code === '23505') {
    res.status(409).json({ error: "Email is already registeredd" });
    } else {
      res.status(500).json({ error: "Registration failed"});
    }
  }
});

// Route to handle user login
app.post("/api/login", async (req, res) => {
  try {
    const { email, password } = req.body;

    const result = await db.query("SELECT * FROM users WHERE email = $1", [email]);
    const user = result.rows[0];
    if (!user) {
    return res.status(400).json({ error: "Invalid email or password" });
    }
    // console.log(user);
    // Compare password to the hashed store
    const validPassword = await bcrypt.compare(password, user.password);
    // console.log(password, user.password)

    if (!validPassword) {
      return res.status(400).json({ error: "Invalid email or password" });
    }
    // Create JWT
    const token = jwt.sign({ email: user.email }, process.env.JWT_SECRET, { expiresIn: '2h' });

    // Exclude the password and other sensitive info
    const { password: _, ...safeUserData } = user;
    
    res.status(200).json({ token, user: safeUserData });
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Login failed" });
  }
});

// Simple route to check users
app.get("/api/users", async (req, res, next) => {
  const result = await db.query("SELECT * FROM users").catch(next);
  res.send(result.rows);
})

//Route to POST appointment notes to appointments table:
app.post('/api/appointments', async (req, res, next) => {
  const note = req.body.note;
  const student_id = req.body.student_id;

  const result = await db
    .query('INSERT INTO appointments (note, student_id) VALUES ($1, $2) RETURNING *;', [note, student_id])
    .catch(next);
  if (result.rows.length === 0){
    res.sendStatus(404);
  } else {
    res.send(result.rows)
  }
})

//Route to DELETE appointment notes from appointment table:
app.delete('/api/appointments/:student_id', async (req, res, next)=>{
  const student_id = req.params.student_id
  const result = await db
    .query('DELETE FROM appointments WHERE student_id = $1 RETURNING *', [ student_id ])
    .catch(next);
  if(result.rows){
    res.sendStatus(200);
  } else {
    res.status(404).send("No Data To Delete")
  }
})

//PATCH/EDIT route for appointment notes in appointments table:
app.patch('/api/appointments/:id', async (req, res, next) => {
  const id = Number.parseInt(req.params.id);
  const { note } = req.body
  const result = await db
    .query('UPDATE appointments SET note=$1 WHERE id=$2 RETURNING *', [note, id])
    .catch(next);
  if(result.rows){
    res.sendStatus(200);
  } else {
    res.status(404).send("No Data to update")
  }
})

app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Internal Server Error");
});
// Serve the static assets AFTER the routes
app.use(express.static("../client/src/dist"))

export default app;