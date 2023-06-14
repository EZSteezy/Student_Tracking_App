INSERT INTO tasks (name) VALUES
    ('Clear CIF'),
    ('Signatures from S1 battallion'),
    ('Financial meeting'),
    ('Signatures from Ed center'),
    ('Finish TAP process');

INSERT INTO branch (name) VALUES
    ('Air Force'),
    ('Army'),
    ('Marines'),
    ('Navy');

INSERT INTO branch_tasks (task_id, branch_id) VALUES
    (1, 1),
    (2, 2);

INSERT INTO instructors (firstname, middlename, lastname, email, location) VALUES
    ('Jane', 'Dunno', 'Doe1', 'JaneDoe@fakemail.com', 'Austin, Texas'),
    ('Jon', NULL, 'Doe2', 'JonDoe@fakeemail.com', 'Cincinnati, OH'),
    ('Phil', NULL, 'Watkins', 'PWatkins@galvanize.com', 'Dallas, Texas'),
    ('Danny', NULL, 'Andrews', 'DAndrews@galvanize.com', 'Tulsa, Oklahoma');

INSERT INTO students (firstname, middlename, lastname, age, location, base, active, phonenumber, email, dutystatus, ets_date) VALUES
    ('Sarah', 'Lynn', 'Marks', 35, 'Clarksville, KY', 'Ft. Campbell', TRUE, 2707981234, 'stoneage@aol.com', 'Outprocessed', '10-Feb-2023'),
    ('Chris', 'P', 'Bacon', 80, 'Villages, FL', NULL, FALSE, 7276437382, 'Bacon&Eggs@fakemail.com', 'Outprocessed', '25-Apr-2023'),
    ('Mike Ro', 'P', 'Ennis', 25, 'San Francisco, CA', 'Travis Air Force Base', TRUE, 4158299673, 'OverCompensate@fakemail.com', 'Pending', '20-Jun-2023'),
    ('Jed', 'I', 'Knight', 38, 'Elkhart, IN', 'Grisson Air Reserve Base', TRUE, 9304734927, 'ForceBeWithYou@fakemail.com', 'Pending', '14-Jul-2023'),
    ('Deja', NULL, 'Viau', 22, 'Austin, TX', NULL, FALSE, 5125609246, 'ItsHappeningAgain@fakemail.com', 'Pending', '23-May-2023'),
    ('Tara', NULL, 'Dactyl', 42, 'Hinesville, GA', 'Ft. Stewart', TRUE, 9127671432, 'Triceratops@fakemail.com', 'Pending', '02-Jun-2023'),
    ('Iva', 'Anita', 'Takashita', 27, 'Fort Riley, KS', 'Ft. Riley', TRUE, 7858913456, 'GottaGo@fakemail.com', 'Outprocessed', '03-May-2023'),
    ('Steve', NULL, 'Sharts', 23, 'Clarksville, KY', 'Ft. Campbell', TRUE, 2708476524, 'fakeemail@fakeemail.com', 'Pending', '11-Oct-2023'),
    ('Sam', NULL, 'Sung', 24, 'Villages, FL', NULL, FALSE, 7276437382, 'Bacon&Eggs@fakemail.com', 'Outprocessed', '25-Apr-2023'),
    ('Saad', NULL, 'Man', 25, 'San Francisco, CA', 'Travis Air Force Base', TRUE, 4158299673, 'OverCompensate@fakemail.com', 'Pending', '20-Jun-2023'),
    ('Batman', 'Bin', 'Suparman', 26, 'Elkhart, IN', 'Grisson Air Reserve Base', TRUE, 9304734927, 'ForceBeWithYou@fakemail.com', 'Pending', '14-Jul-2023'),
    ('Kash', NULL, 'Register', 27, 'Austin, TX', NULL, FALSE, 5125609246, 'ItsHappeningAgain@fakemail.com', 'Pending', '23-May-2023'),
    ('Jack', NULL, 'Daniels', 28,'Hinesville, GA', 'Ft. Stewart', TRUE, 9127671432, 'Triceratops@fakemail.com', 'Pending', '02-Jun-2023'),
    ('Krystal', NULL, 'Ball', 29,'Fort Riley, KS', 'Ft. Riley', TRUE, 7858913456, 'GottaGo@fakemail.com', 'Outprocessed', '03-May-2023'),
    ('Shaquille', NULL, 'Oatmeal', 35, 'Clarksville, KY', 'Ft. Campbell', TRUE, 2707981234, 'stoneage@aol.com', 'Outprocessed', '10-Feb-2023'),
    ('Cranjus', NULL, 'McBasketball', 80, 'Villages, FL', NULL, FALSE, 7276437382, 'Bacon&Eggs@fakemail.com', 'Outprocessed', '25-Apr-2023'),
    ('Dill', NULL, 'Funk', 25, 'San Francisco, CA', 'Travis Air Force Base', TRUE, 4158299673, 'OverCompensate@fakemail.com', 'Pending', '20-Jun-2023'),
    ('Mary', 'Beth', 'BethBeth', 38, 'Elkhart, IN', 'Grisson Air Reserve Base', TRUE, 9304734927, 'ForceBeWithYou@fakemail.com', 'Pending', '14-Jul-2023'),
    ('Beefy', NULL, 'McWhatnow', 22, 'Austin, TX', NULL, FALSE, 5125609246, 'ItsHappeningAgain@fakemail.com', 'Pending', '23-May-2023'),
    ('Captain', 'Melvin', 'Seashore', 42, 'Hinesville, GA', 'Ft. Stewart', TRUE, 9127671432, 'Triceratops@fakemail.com', 'Pending', '02-Jun-2023'),
    ('Dr. Shrimp', NULL, 'PuertoRico', 27, 'Fort Riley, KS', 'Ft. Riley', TRUE, 7858913456, 'GottaGo@fakemail.com', 'Outprocessed', '03-May-2023'),
    ('Simmy', NULL, 'Kanstandyourbitz', 23, 'Clarksville, KY', 'Ft. Campbell', TRUE, 2708476524, 'fakeemail@fakeemail.com', 'Pending', '11-Oct-2023'),
    ('Wandamian', NULL, 'Crucifixplate', 24, 'Villages, FL', NULL, FALSE, 7276437382, 'Bacon&Eggs@fakemail.com', 'Outprocessed', '25-Apr-2023'),
    ('Denise', NULL, 'Fat', 25, 'San Francisco, CA', 'Travis Air Force Base', TRUE, 4158299673, 'OverCompensate@fakemail.com', 'Pending', '20-Jun-2023'),
    ('Jury', NULL, 'Prosciutto', 26, 'Elkhart, IN', 'Grisson Air Reserve Base', TRUE, 9304734927, 'ForceBeWithYou@fakemail.com', 'Pending', '14-Jul-2023'),
    ('RickyTicky', NULL, 'BobbyWobbin', 27, 'Austin, TX', NULL, FALSE, 5125609246, 'ItsHappeningAgain@fakemail.com', 'Pending', '23-May-2023'),
    ('Dadood', NULL, 'Frumcheers', 28,'Hinesville, GA', 'Ft. Stewart', TRUE, 9127671432, 'Triceratops@fakemail.com', 'Pending', '02-Jun-2023'),
    ('Avocarter', NULL, 'Phucks', 29,'Fort Riley, KS', 'Ft. Riley', TRUE, 7858913456, 'GottaGo@fakemail.com', 'Outprocessed', '03-May-2023'),
    ('Hungary', NULL, 'Denk', 35, 'Clarksville, KY', 'Ft. Campbell', TRUE, 2707981234, 'stoneage@aol.com', 'Outprocessed', '10-Feb-2023'),
    ('Count', NULL, 'Ravioli', 80, 'Villages, FL', NULL, FALSE, 7276437382, 'Bacon&Eggs@fakemail.com', 'Outprocessed', '25-Apr-2023'),
    ('Dungareese', NULL, 'Weatherspoons', 25, 'San Francisco, CA', 'Travis Air Force Base', TRUE, 4158299673, 'OverCompensate@fakemail.com', 'Pending', '20-Jun-2023'),
    ('Dusty', NULL, 'Shidiz', 38, 'Elkhart, IN', 'Grisson Air Reserve Base', TRUE, 9304734927, 'ForceBeWithYou@fakemail.com', 'Pending', '14-Jul-2023'),
    ('Rachel', NULL, 'Dahubbahubba', 22, 'Austin, TX', NULL, FALSE, 5125609246, 'ItsHappeningAgain@fakemail.com', 'Pending', '23-May-2023'),
    ('Moist', NULL, 'Kite', 42, 'Hinesville, GA', 'Ft. Stewart', TRUE, 9127671432, 'Triceratops@fakemail.com', 'Pending', '02-Jun-2023'),
    ('Chug-Chug', 'Pickles', 'Takashita', 27, 'Fort Riley, KS', 'Ft. Riley', TRUE, 7858913456, 'GottaGo@fakemail.com', 'Outprocessed', '03-May-2023'),
    ('Stevia', NULL, 'Flunt', 23, 'Clarksville, KY', 'Ft. Campbell', TRUE, 2708476524, 'fakeemail@fakeemail.com', 'Pending', '11-Oct-2023'),
    ('Cumby', NULL, 'OBoombox', 24, 'Villages, FL', NULL, FALSE, 7276437382, 'Bacon&Eggs@fakemail.com', 'Outprocessed', '25-Apr-2023'),
    ('Melba', 'Moses', 'Wolfenstein', 25, 'San Francisco, CA', 'Travis Air Force Base', TRUE, 4158299673, 'OverCompensate@fakemail.com', 'Pending', '20-Jun-2023'),
    ('Church', 'Pewpewpew', 'Suparman', 26, 'Elkhart, IN', 'Grisson Air Reserve Base', TRUE, 9304734927, 'ForceBeWithYou@fakemail.com', 'Pending', '14-Jul-2023'),
    ('Lumpy', NULL, 'Dumper', 27, 'Austin, TX', NULL, FALSE, 5125609246, 'ItsHappeningAgain@fakemail.com', 'Pending', '23-May-2023'),
    ('Disfatt', NULL, 'Bidge', 28,'Hinesville, GA', 'Ft. Stewart', TRUE, 9127671432, 'Triceratops@fakemail.com', 'Pending', '02-Jun-2023'),
    ('Diddy', NULL, 'Doodat', 29,'Fort Riley, KS', 'Ft. Riley', TRUE, 7858913456, 'GottaGo@fakemail.com', 'Outprocessed', '03-May-2023'),
    ('Jabreakit', NULL, 'Jubawdit', 35, 'Clarksville, KY', 'Ft. Campbell', TRUE, 2707981234, 'stoneage@aol.com', 'Outprocessed', '10-Feb-2023'),
    ('Cowabunga', NULL, 'Peppermill', 80, 'Villages, FL', NULL, FALSE, 7276437382, 'Bacon&Eggs@fakemail.com', 'Outprocessed', '25-Apr-2023'),
    ('Henny', NULL, 'Cabbagehead', 25, 'San Francisco, CA', 'Travis Air Force Base', TRUE, 4158299673, 'OverCompensate@fakemail.com', 'Pending', '20-Jun-2023'),
    ('Sharty', NULL, 'Waffles', 38, 'Elkhart, IN', 'Grisson Air Reserve Base', TRUE, 9304734927, 'ForceBeWithYou@fakemail.com', 'Pending', '14-Jul-2023'),
    ('Nabi', NULL, 'Cankles', 22, 'Austin, TX', NULL, FALSE, 5125609246, 'ItsHappeningAgain@fakemail.com', 'Pending', '23-May-2023'),
    ('Mark-Pat-Bill-Joe', NULL, 'Dinosaur', 42, 'Hinesville, GA', 'Ft. Stewart', TRUE, 9127671432, 'Triceratops@fakemail.com', 'Pending', '02-Jun-2023'),
    ('Bull', NULL, 'Shiatsu', 27, 'Fort Riley, KS', 'Ft. Riley', TRUE, 7858913456, 'GottaGo@fakemail.com', 'Outprocessed', '03-May-2023'),
    ('Heimlich', NULL, 'Manure', 23, 'Clarksville, KY', 'Ft. Campbell', TRUE, 2708476524, 'fakeemail@fakeemail.com', 'Pending', '11-Oct-2023'),
    ('Eetwont', NULL, 'Flush', 24, 'Villages, FL', NULL, FALSE, 7276437382, 'Bacon&Eggs@fakemail.com', 'Outprocessed', '25-Apr-2023'),
    ('Aunt', NULL, 'Tim', 25, 'San Francisco, CA', 'Travis Air Force Base', TRUE, 4158299673, 'OverCompensate@fakemail.com', 'Pending', '20-Jun-2023'),
    ('Dawn', NULL, 'Shawty', 26, 'Elkhart, IN', 'Grisson Air Reserve Base', TRUE, 9304734927, 'ForceBeWithYou@fakemail.com', 'Pending', '14-Jul-2023'),
    ('Earl', NULL, 'Turlet', 27, 'Austin, TX', NULL, FALSE, 5125609246, 'ItsHappeningAgain@fakemail.com', 'Pending', '23-May-2023'),
    ('Corky', NULL, 'Marinara', 28,'Hinesville, GA', 'Ft. Stewart', TRUE, 9127671432, 'Triceratops@fakemail.com', 'Pending', '02-Jun-2023'),
    ('Densel', NULL, 'Washingmachine', 29,'Fort Riley, KS', 'Ft. Riley', TRUE, 7858913456, 'GottaGo@fakemail.com', 'Outprocessed', '03-May-2023'),
    ('GaryGar', NULL, 'GarGary', 26, 'Elkhart, IN', 'Grisson Air Reserve Base', TRUE, 9304734927, 'ForceBeWithYou@fakemail.com', 'Pending', '14-Jul-2023'),
    ('Shart', NULL, 'Simpson', 27, 'Austin, TX', NULL, FALSE, 5125609246, 'ItsHappeningAgain@fakemail.com', 'Pending', '23-May-2023'),
    ('Tatiana', NULL, 'Ohnoyoudidnt', 28,'Hinesville, GA', 'Ft. Stewart', TRUE, 9127671432, 'Triceratops@fakemail.com', 'Pending', '02-Jun-2023'),
    ('Rustic', NULL, 'HillBilly', 29,'Fort Riley, KS', 'Ft. Riley', TRUE, 7858913456, 'GottaGo@fakemail.com', 'Outprocessed', '03-May-2023');

INSERT INTO cohorts (courseid, startdate, enddate, numberofstudents) VALUES
    ('MCSP-19', '01/17/2023', '05/26/2013', 15),
    ('MCSP-01', '06/01/1912', '11/18/1912', 15),
    ('MCSP-22', '05/29/2023', '10/29/2023', 15),
    ('MCSP-23', '06/10/2023', '11/23/2023', 15);

INSERT INTO student_tasks (completed) VALUES   
    (TRUE),
    (FALSE);

INSERT INTO appointments (note, student_id) VALUES  
    ('Resume needs some work', 1),
    ('Needs to find 3 companies interested in applying for', 2),
    ('Finished going over resume', 3),
    ('Go over practice interview in Pramp', 4),
    ('Discusee Developer Journal', 5),
    ('Go over Parin attributes', 6),
    ('Answer interview questions to one low score specific Parin attribute', 7),
    ('Fixed resume bullet points to fit STAR method', 1),
    ('Job scan resume to fit 3 job descriptions', 2),
    ('Review interview student had with company', 3);

UPDATE instructors SET cohort_id = 1 WHERE id = 1;
UPDATE instructors SET cohort_id = 2 WHERE id = 2;
UPDATE instructors SET cohort_id = 3 WHERE id = 3;
UPDATE instructors SET cohort_id = 4 WHERE id = 4;

UPDATE students SET branch_id = 1 WHERE id = 1;
UPDATE students SET branch_id = 2 WHERE id = 2;
UPDATE students SET branch_id = 3 WHERE id = 3;
UPDATE students SET branch_id = 4 WHERE id = 4;
UPDATE students SET branch_id = 1 WHERE id = 5;
UPDATE students SET branch_id = 2 WHERE id = 6;
UPDATE students SET branch_id = 3 WHERE id = 7;
UPDATE students SET branch_id = 4 WHERE id = 8;
UPDATE students SET branch_id = 1 WHERE id = 9;
UPDATE students SET branch_id = 2 WHERE id = 10;
UPDATE students SET branch_id = 3 WHERE id = 11;
UPDATE students SET branch_id = 4 WHERE id = 12;
UPDATE students SET branch_id = 1 WHERE id = 13;
UPDATE students SET branch_id = 2 WHERE id = 14;
UPDATE students SET branch_id = 3 WHERE id = 15;
UPDATE students SET branch_id = 1 WHERE id = 16;
UPDATE students SET branch_id = 2 WHERE id = 17;
UPDATE students SET branch_id = 3 WHERE id = 18;
UPDATE students SET branch_id = 4 WHERE id = 19;
UPDATE students SET branch_id = 1 WHERE id = 20;
UPDATE students SET branch_id = 2 WHERE id = 21;
UPDATE students SET branch_id = 3 WHERE id = 22;
UPDATE students SET branch_id = 4 WHERE id = 23;
UPDATE students SET branch_id = 1 WHERE id = 24;
UPDATE students SET branch_id = 2 WHERE id = 25;
UPDATE students SET branch_id = 3 WHERE id = 26;
UPDATE students SET branch_id = 4 WHERE id = 27;
UPDATE students SET branch_id = 1 WHERE id = 28;
UPDATE students SET branch_id = 2 WHERE id = 29;
UPDATE students SET branch_id = 3 WHERE id = 30;
UPDATE students SET branch_id = 1 WHERE id = 31;
UPDATE students SET branch_id = 2 WHERE id = 32;
UPDATE students SET branch_id = 3 WHERE id = 33;
UPDATE students SET branch_id = 4 WHERE id = 34;
UPDATE students SET branch_id = 1 WHERE id = 35;
UPDATE students SET branch_id = 2 WHERE id = 36;
UPDATE students SET branch_id = 3 WHERE id = 37;
UPDATE students SET branch_id = 4 WHERE id = 38;
UPDATE students SET branch_id = 1 WHERE id = 39;
UPDATE students SET branch_id = 2 WHERE id = 40;
UPDATE students SET branch_id = 3 WHERE id = 41;
UPDATE students SET branch_id = 4 WHERE id = 42;
UPDATE students SET branch_id = 1 WHERE id = 43;
UPDATE students SET branch_id = 2 WHERE id = 44;
UPDATE students SET branch_id = 3 WHERE id = 45;
UPDATE students SET branch_id = 1 WHERE id = 46;
UPDATE students SET branch_id = 2 WHERE id = 47;
UPDATE students SET branch_id = 3 WHERE id = 48;
UPDATE students SET branch_id = 4 WHERE id = 49;
UPDATE students SET branch_id = 1 WHERE id = 50;
UPDATE students SET branch_id = 2 WHERE id = 51;
UPDATE students SET branch_id = 3 WHERE id = 52;
UPDATE students SET branch_id = 4 WHERE id = 53;
UPDATE students SET branch_id = 1 WHERE id = 54;
UPDATE students SET branch_id = 2 WHERE id = 55;
UPDATE students SET branch_id = 3 WHERE id = 56;
UPDATE students SET branch_id = 4 WHERE id = 57;
UPDATE students SET branch_id = 1 WHERE id = 58;
UPDATE students SET branch_id = 2 WHERE id = 59;
UPDATE students SET branch_id = 3 WHERE id = 60;

UPDATE students SET instructor_id = 1 WHERE id = 1;
UPDATE students SET instructor_id = 1 WHERE id = 2;
UPDATE students SET instructor_id = 1 WHERE id = 3;
UPDATE students SET instructor_id = 1 WHERE id = 4;
UPDATE students SET instructor_id = 1 WHERE id = 5;
UPDATE students SET instructor_id = 1 WHERE id = 6;
UPDATE students SET instructor_id = 1 WHERE id = 7;
UPDATE students SET instructor_id = 1 WHERE id = 8;
UPDATE students SET instructor_id = 1 WHERE id = 9;
UPDATE students SET instructor_id = 1 WHERE id = 10;
UPDATE students SET instructor_id = 1 WHERE id = 11;
UPDATE students SET instructor_id = 1 WHERE id = 12;
UPDATE students SET instructor_id = 1 WHERE id = 13;
UPDATE students SET instructor_id = 1 WHERE id = 14;
UPDATE students SET instructor_id = 1 WHERE id = 15;
UPDATE students SET instructor_id = 2 WHERE id = 16;
UPDATE students SET instructor_id = 2 WHERE id = 17;
UPDATE students SET instructor_id = 2 WHERE id = 18;
UPDATE students SET instructor_id = 2 WHERE id = 19;
UPDATE students SET instructor_id = 2 WHERE id = 20;
UPDATE students SET instructor_id = 2 WHERE id = 21;
UPDATE students SET instructor_id = 2 WHERE id = 22;
UPDATE students SET instructor_id = 2 WHERE id = 23;
UPDATE students SET instructor_id = 2 WHERE id = 24;
UPDATE students SET instructor_id = 2 WHERE id = 25;
UPDATE students SET instructor_id = 2 WHERE id = 26;
UPDATE students SET instructor_id = 2 WHERE id = 27;
UPDATE students SET instructor_id = 2 WHERE id = 28;
UPDATE students SET instructor_id = 2 WHERE id = 29;
UPDATE students SET instructor_id = 2 WHERE id = 30;
UPDATE students SET instructor_id = 3 WHERE id = 31;
UPDATE students SET instructor_id = 3 WHERE id = 32;
UPDATE students SET instructor_id = 3 WHERE id = 33;
UPDATE students SET instructor_id = 3 WHERE id = 34;
UPDATE students SET instructor_id = 3 WHERE id = 35;
UPDATE students SET instructor_id = 3 WHERE id = 36;
UPDATE students SET instructor_id = 3 WHERE id = 37;
UPDATE students SET instructor_id = 3 WHERE id = 38;
UPDATE students SET instructor_id = 3 WHERE id = 39;
UPDATE students SET instructor_id = 3 WHERE id = 40;
UPDATE students SET instructor_id = 3 WHERE id = 41;
UPDATE students SET instructor_id = 3 WHERE id = 42;
UPDATE students SET instructor_id = 3 WHERE id = 43;
UPDATE students SET instructor_id = 3 WHERE id = 44;
UPDATE students SET instructor_id = 3 WHERE id = 45;
UPDATE students SET instructor_id = 4 WHERE id = 46;
UPDATE students SET instructor_id = 4 WHERE id = 47;
UPDATE students SET instructor_id = 4 WHERE id = 48;
UPDATE students SET instructor_id = 4 WHERE id = 49;
UPDATE students SET instructor_id = 4 WHERE id = 50;
UPDATE students SET instructor_id = 4 WHERE id = 51;
UPDATE students SET instructor_id = 4 WHERE id = 52;
UPDATE students SET instructor_id = 4 WHERE id = 53;
UPDATE students SET instructor_id = 4 WHERE id = 54;
UPDATE students SET instructor_id = 4 WHERE id = 55;
UPDATE students SET instructor_id = 4 WHERE id = 56;
UPDATE students SET instructor_id = 4 WHERE id = 57;
UPDATE students SET instructor_id = 4 WHERE id = 58;
UPDATE students SET instructor_id = 4 WHERE id = 59;
UPDATE students SET instructor_id = 4 WHERE id = 60;

UPDATE students SET cohort_id = 1 WHERE id = 1;
UPDATE students SET cohort_id = 1 WHERE id = 2;
UPDATE students SET cohort_id = 1 WHERE id = 3;
UPDATE students SET cohort_id = 1 WHERE id = 4;
UPDATE students SET cohort_id = 1 WHERE id = 5;
UPDATE students SET cohort_id = 1 WHERE id = 6;
UPDATE students SET cohort_id = 1 WHERE id = 7;
UPDATE students SET cohort_id = 1 WHERE id = 8;
UPDATE students SET cohort_id = 1 WHERE id = 9;
UPDATE students SET cohort_id = 1 WHERE id = 10;
UPDATE students SET cohort_id = 1 WHERE id = 11;
UPDATE students SET cohort_id = 1 WHERE id = 12;
UPDATE students SET cohort_id = 1 WHERE id = 13;
UPDATE students SET cohort_id = 1 WHERE id = 14;
UPDATE students SET cohort_id = 1 WHERE id = 15;
UPDATE students SET cohort_id = 2 WHERE id = 16;
UPDATE students SET cohort_id = 2 WHERE id = 17;
UPDATE students SET cohort_id = 2 WHERE id = 18;
UPDATE students SET cohort_id = 2 WHERE id = 19;
UPDATE students SET cohort_id = 2 WHERE id = 20;
UPDATE students SET cohort_id = 2 WHERE id = 21;
UPDATE students SET cohort_id = 2 WHERE id = 22;
UPDATE students SET cohort_id = 2 WHERE id = 23;
UPDATE students SET cohort_id = 2 WHERE id = 24;
UPDATE students SET cohort_id = 2 WHERE id = 25;
UPDATE students SET cohort_id = 2 WHERE id = 26;
UPDATE students SET cohort_id = 2 WHERE id = 27;
UPDATE students SET cohort_id = 2 WHERE id = 28;
UPDATE students SET cohort_id = 2 WHERE id = 29;
UPDATE students SET cohort_id = 2 WHERE id = 30;
UPDATE students SET cohort_id = 3 WHERE id = 31;
UPDATE students SET cohort_id = 3 WHERE id = 32;
UPDATE students SET cohort_id = 3 WHERE id = 33;
UPDATE students SET cohort_id = 3 WHERE id = 34;
UPDATE students SET cohort_id = 3 WHERE id = 35;
UPDATE students SET cohort_id = 3 WHERE id = 36;
UPDATE students SET cohort_id = 3 WHERE id = 37;
UPDATE students SET cohort_id = 3 WHERE id = 38;
UPDATE students SET cohort_id = 3 WHERE id = 39;
UPDATE students SET cohort_id = 3 WHERE id = 40;
UPDATE students SET cohort_id = 3 WHERE id = 41;
UPDATE students SET cohort_id = 3 WHERE id = 42;
UPDATE students SET cohort_id = 3 WHERE id = 43;
UPDATE students SET cohort_id = 3 WHERE id = 44;
UPDATE students SET cohort_id = 3 WHERE id = 45;
UPDATE students SET cohort_id = 4 WHERE id = 46;
UPDATE students SET cohort_id = 4 WHERE id = 47;
UPDATE students SET cohort_id = 4 WHERE id = 48;
UPDATE students SET cohort_id = 4 WHERE id = 49;
UPDATE students SET cohort_id = 4 WHERE id = 50;
UPDATE students SET cohort_id = 4 WHERE id = 51;
UPDATE students SET cohort_id = 4 WHERE id = 52;
UPDATE students SET cohort_id = 4 WHERE id = 53;
UPDATE students SET cohort_id = 4 WHERE id = 54;
UPDATE students SET cohort_id = 4 WHERE id = 55;
UPDATE students SET cohort_id = 4 WHERE id = 56;
UPDATE students SET cohort_id = 4 WHERE id = 57;
UPDATE students SET cohort_id = 4 WHERE id = 58;
UPDATE students SET cohort_id = 4 WHERE id = 59;
UPDATE students SET cohort_id = 4 WHERE id = 60;

UPDATE students SET appointments = 'Medical' WHERE id = 1;
UPDATE students SET appointments = 'Clothing' WHERE id = 2;
UPDATE students SET appointments = 'Clearing' WHERE id = 3;
UPDATE students SET appointments = 'Command survey' WHERE id = 4;
UPDATE students SET appointments = 'Outprocessing' WHERE id = 5;
UPDATE students SET appointments = 'Turn-in' WHERE id = 6;
UPDATE students SET appointments = 'Range Day, bitch, @ me' WHERE id = 7;
UPDATE students SET appointments = 'Medical' WHERE id = 8;
UPDATE students SET appointments = 'Clothing' WHERE id = 9;
UPDATE students SET appointments = 'Clearing' WHERE id = 10;
UPDATE students SET appointments = 'Command survey' WHERE id = 11;
UPDATE students SET appointments = 'Outprocessing' WHERE id = 12;
UPDATE students SET appointments = 'Turn-in' WHERE id = 13;
UPDATE students SET appointments = 'Range Day, bitch, @ me' WHERE id = 14;
UPDATE students SET appointments = 'Turn-in' WHERE id = 15;
UPDATE students SET appointments = 'Medical' WHERE id = 16;
UPDATE students SET appointments = 'Clothing' WHERE id = 17;
UPDATE students SET appointments = 'Clearing' WHERE id = 18;
UPDATE students SET appointments = 'Command survey' WHERE id = 19;
UPDATE students SET appointments = 'Outprocessing' WHERE id = 20;
UPDATE students SET appointments = 'Turn-in' WHERE id = 21;
UPDATE students SET appointments = 'Range Day, bitch, @ me' WHERE id = 22;
UPDATE students SET appointments = 'Medical' WHERE id = 23;
UPDATE students SET appointments = 'Clothing' WHERE id = 24;
UPDATE students SET appointments = 'Clearing' WHERE id = 25;
UPDATE students SET appointments = 'Command survey' WHERE id = 26;
UPDATE students SET appointments = 'Outprocessing' WHERE id = 27;
UPDATE students SET appointments = 'Turn-in' WHERE id = 28;
UPDATE students SET appointments = 'Range Day, bitch, @ me' WHERE id = 29;
UPDATE students SET appointments = 'Turn-in' WHERE id = 30;
UPDATE students SET appointments = 'Medical' WHERE id = 31;
UPDATE students SET appointments = 'Clothing' WHERE id = 32;
UPDATE students SET appointments = 'Clearing' WHERE id = 33;
UPDATE students SET appointments = 'Command survey' WHERE id = 34;
UPDATE students SET appointments = 'Outprocessing' WHERE id = 35;
UPDATE students SET appointments = 'Turn-in' WHERE id = 36;
UPDATE students SET appointments = 'Range Day, bitch, @ me' WHERE id = 37;
UPDATE students SET appointments = 'Medical' WHERE id = 38;
UPDATE students SET appointments = 'Clothing' WHERE id = 39;
UPDATE students SET appointments = 'Clearing' WHERE id = 40;
UPDATE students SET appointments = 'Command survey' WHERE id = 41;
UPDATE students SET appointments = 'Outprocessing' WHERE id = 42;
UPDATE students SET appointments = 'Turn-in' WHERE id = 43;
UPDATE students SET appointments = 'Range Day, bitch, @ me' WHERE id = 44;
UPDATE students SET appointments = 'Turn-in' WHERE id = 45;
UPDATE students SET appointments = 'Medical' WHERE id = 46;
UPDATE students SET appointments = 'Clothing' WHERE id = 47;
UPDATE students SET appointments = 'Clearing' WHERE id = 48;
UPDATE students SET appointments = 'Command survey' WHERE id = 49;
UPDATE students SET appointments = 'Outprocessing' WHERE id = 50;
UPDATE students SET appointments = 'Turn-in' WHERE id = 51;
UPDATE students SET appointments = 'Range Day, bitch, @ me' WHERE id = 52;
UPDATE students SET appointments = 'Medical' WHERE id = 53;
UPDATE students SET appointments = 'Clothing' WHERE id = 54;
UPDATE students SET appointments = 'Clearing' WHERE id = 55;
UPDATE students SET appointments = 'Command survey' WHERE id = 56;
UPDATE students SET appointments = 'Outprocessing' WHERE id = 57;
UPDATE students SET appointments = 'Turn-in' WHERE id = 58;
UPDATE students SET appointments = 'Range Day, bitch, @ me' WHERE id = 59;
UPDATE students SET appointments = 'Turn-in' WHERE id = 60;

UPDATE cohorts SET instructor_id = 1 WHERE id = 1;
UPDATE cohorts SET instructor_id = 2 WHERE id = 2;
UPDATE cohorts SET instructor_id = 3 WHERE id = 3;
UPDATE cohorts SET instructor_id = 4 WHERE id = 4;

UPDATE student_tasks SET student_id = 1 WHERE id = 1;
UPDATE student_tasks SET student_id = 2 WHERE id = 2;
UPDATE student_tasks SET branch_tasks_id = 1 WHERE id = 1;
UPDATE student_tasks SET branch_tasks_id = 2 WHERE id = 2;