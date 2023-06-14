import React, {createContext, useEffect, useState} from "react";

const LeftColumnContext = createContext();

export const LeftColumnProvider = ({children}) => {
    const [dropDownClicked, setDropDownClicked] = useState("");
    const [cohortClicked, setCohortClicked] = useState("");
    const [cohorts, setCohorts] = useState([]);
    const [openDropDown, setOpenDropdown] = useState(null);
    const [students, setStudents] = useState([]);
    const [studentss, setStudentss] = useState([]);
    const [cohortId, setcohortId] = useState(1);
    const [cohortIds, setcohortIds] = useState(1);
    const [cohortIdForInfo, setCohortIdForInfo] = useState(1);
    const [studentID, setStudentClicked] = useState(1);
    const [studentdata, setStudentData] = useState(null);
    const [branchdata, setBranchData] = useState(null);
    const [renderStudent, setRenderStudent] = useState(false)

    const handleDropClicked = (value, id) =>{
        if(dropDownClicked === value){
            setDropDownClicked("")    
        }else{
            setDropDownClicked(value)
            setcohortIds(id)
        } 
    }

    const handleCohortClicked = (cohort, id, id2) => {
        if(cohortClicked === cohort){
            setCohortClicked("")
        }else{
            setCohortClicked(cohort)
            setcohortId(id2)
            setCohortIdForInfo(id)
            setRenderStudent(false)

        } 
    }

    useEffect(() => {
        if(branchdata){
        }
    }, [studentdata]);

    useEffect(() => {
        fetch(`http://localhost:8000/api/branches`)
            .then(response => response.json())
            .then(data => setBranchData(data))
            .catch(error => console.log(error));
    }, []);

    useEffect(() => {
        fetch(`/api/branches`)
            .then(response => response.json())
            .then(data => setBranchData(data))
            .catch(error => console.log(error));
    }, []);
    
    useEffect(() => {
        if(studentdata){
        }
    }, [studentdata]);

    useEffect(() => {
        fetch(`http://localhost:8000/api/students/${studentID}`)
            .then(response => response.json())
            .then(data => setStudentData(data))
            .catch(error => console.log(error));
    }, [studentID]);

    useEffect(() => {
        fetch(`/api/students/${studentID}`)
            .then(response => response.json())
            .then(data => setStudentData(data))
            .catch(error => console.log(error));
    }, [studentID]);

    useEffect(() => {
        fetch('http://localhost:8000/api/cohorts')
            .then(response => response.json())
            .then(data => setCohorts(data))
            .catch(error => console.log(error));
    }, []);

    useEffect(() => {
        fetch('/api/cohorts')
            .then(response => response.json())
            .then(data => setCohorts(data))
            .catch(error => console.log(error));
    }, []);

    useEffect(() => {
        fetch(`http://localhost:8000/api/cohorts/${cohortId}/students`)
            .then(response => response.json())
            .then(data => setStudents(data))
            .catch(error => console.log(error));
    }, [cohortId]);

    useEffect(() => {
        fetch(`http://localhost:8000/api/cohorts/${cohortIds}/students`)
            .then(response => response.json())
            .then(data => setStudentss(data))
            .catch(error => console.log(error));
    }, [cohortIds]);
    useEffect(() => {
        fetch(`/api/cohorts/${cohortIds}/students`)
            .then(response => response.json())
            .then(data => setStudentss(data))
            .catch(error => console.log(error));
    }, [cohortIds]);
    useEffect(() => {
        fetch(`/api/cohorts/${cohortId}/students`)
            .then(response => response.json())
            .then(data => setStudents(data))
            .catch(error => console.log(error));
    }, [cohortId]);

    const toggleDropDown = (cohortId) => {
        if (openDropDown === cohortId) {
            setOpenDropdown(null);
        } else {
            setOpenDropdown(cohortId);
        }
    };

    function assignColor(dateInput) {
        let today = new Date();
        today.setHours(0, 0, 0, 0); // Set the time to midnight

        let inputDate = new Date(dateInput);
        inputDate.setHours(0, 0, 0, 0); // Set the time to midnight

        let timeDifference = inputDate.getTime() - today.getTime();
        var daysDifference = Math.ceil(timeDifference / (1000 * 3600 * 24)); // Convert milliseconds to days

        let color;
        if (daysDifference < 0) {
            color = "green"; // Date has passed
        } else if (daysDifference <= 30) {
            color = "red"; // Less than a month away
        } else {
            color = "yellow"; // More than a month away
        }
        return color;
    }

    return( <LeftColumnContext.Provider value = {{
        studentID,
        renderStudent,
        setCohortClicked,
        setRenderStudent,
        studentdata,
        branchdata,
        setStudentClicked,
        setStudentData,
        dropDownClicked,
        handleDropClicked,
        cohortClicked, 
        handleCohortClicked,
        cohorts,
        toggleDropDown,
        openDropDown,
        students,
        studentss,
        cohortId,
        cohortIdForInfo,
        setStudents,
        assignColor
        
    }}>
        {children}
    </LeftColumnContext.Provider>
    )
}

export default LeftColumnContext;