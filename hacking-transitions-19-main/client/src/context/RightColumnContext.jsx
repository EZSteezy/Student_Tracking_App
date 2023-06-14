import React, {createContext, useEffect, useState, useContext} from "react";
import LeftColumnContext from "./LeftColumnContext.jsx";

const RightColumnContext = createContext();

export const RightColumnProvider = ({ children }) => {
    const [ students, setStudents ] = useState([]);
    const { cohortIdForInfo } = useContext(LeftColumnContext);
    const [ tasks, setTasks ] = useState([]);
    const [ update, setUpdate ] = useState(false);
    const [ edit, setEdit ] = useState("");
    const [ student, setStudent ] = useState("");
    const [ taskId, setTaskId ] = useState(null);
    const [ noteSelected, setNoteSelected ] = useState("");

    useEffect(() => {
        fetch(`/api/cohorts/${cohortIdForInfo + 1}/students`)
            .then(response => response.json())
            .then(data => setStudents(data))
            .catch(error => console.log(error));
    }, [cohortIdForInfo]);

    useEffect(() => {
        setUpdate(false)
        
        fetch('/api/appointments')
            .then(response => response.json())
            .then(data =>setTasks(data))
            .catch(error => console.log(error));
    }, [update===true]);
    
    return( <RightColumnContext.Provider value = {{
        students,
        tasks,
        update,
        setUpdate,
        edit,
        setEdit,
        student,
        setStudent,
        noteSelected,
        setNoteSelected,
        taskId,
        setTaskId
    }}>
        {children}
    </RightColumnContext.Provider>
    )
}

export default RightColumnContext;