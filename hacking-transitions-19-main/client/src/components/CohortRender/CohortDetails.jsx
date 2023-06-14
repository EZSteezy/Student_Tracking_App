import React, { useContext, useEffect } from 'react';
import Draggable from 'react-draggable';
import LeftColumnContext from "../../context/LeftColumnContext";
import '../../styles/CohortDetails.css';
import { Resizable } from 'react-resizable';
import { useState } from 'react';

const CohortDetails = () => {
    const { cohortClicked, cohortIdForInfo, cohorts, setCohortClicked, students, assignColor, setStudentClicked, setRenderStudent } = useContext(LeftColumnContext);
    const [size, setSize] = useState({ width: 500, height: 300 });

    const workAreaBounds = {
        left: -170, 
        top: -455, 
        right: 520, 
        bottom: 370, 
    };
    const handleResize = (e, { size }) => {
        setSize(size);
    };
    const getBranchName = (branchId) => {
        switch (branchId) {
            case 1:
                return "Air Force";
            case 2:
                return "Army";
            case 3:
                return "Marines";
            case 4:
                return "Navy";
            default:
                return "Unknown";
        }
    };

    return (
        
        <Draggable handle=".cohortInfoHeader" bounds={workAreaBounds}>
            <Resizable
                className="cohortInfoContainer"
                width={size.width}
                height={size.height}
                onResize={handleResize}
                minConstraints={[200, 200]}
                maxConstraints={[800, 600]}
            >
            <div className="cohortInfoContainer">
                <div className="cohortInfoHeader">
                    <div className="cohortInfoName">
                        {cohortClicked}
                            <div className="cohortClose" onClick={() => { setCohortClicked(""); setRenderStudent(false) }}>X</div>
                    </div>
                </div>
                <div className="basicCohortInfo">
                    <div className="CInfo">{`Start Date: ${cohorts[cohortIdForInfo].startdate}`}</div>
                    <div className="CInfo">{`End Date: ${cohorts[cohortIdForInfo].enddate}`}</div>
                    <div className="CInfo">{`Instructor: ${cohorts[cohortIdForInfo].instructor_id}`}</div>
                    <div className="CInfo">{`Number Of Students: ${cohorts[cohortIdForInfo].numberofstudents}`}</div>
                </div>
                <table className="cohortStudentTable">
                    <thead>
                        <tr>
                            <th className="cohortStudentTableHeader">First Name</th>
                            <th className="cohortStudentTableHeader">Last Name</th>
                            <th className="cohortStudentTableHeader">Branch</th>
                            <th className="cohortStudentTableHeader">Duty Status</th>
                            <th className="cohortStudentTableHeader">ETS Date</th>
                            <th className="cohortStudentTableHeader">Phone Number</th>
                        </tr>
                    </thead>
                    <tbody>
                        {students.map((student, index) => {
                            const branch = getBranchName(student.branch_id);
                            const etsDate = new Date(student.ets_date).toLocaleDateString('en-US');
                            const formattedPhoneNumber = student.phonenumber.replace(/(\d{3})(\d{3})(\d{4})/, '($1)-$2-$3');
                            const setColor = assignColor(student.ets_date)
                            // console.log(setColor)
                            return (
                                <tr key={index} className="cohortStudent" 
                                    onClick={() => {
                                        setStudentClicked(student.id);
                                        setRenderStudent(true);
                                    }}>
                                    <td className="cohortStudentEntry" >{student.firstname}</td>
                                    <td className="cohortStudentEntry">{student.lastname}</td>
                                    <td className="cohortStudentEntry">{branch}</td>
                                    <td className="cohortStudentEntry">{student.dutystatus}</td>
                                    <td className="cohortStudentEntry">{etsDate}<div className='circle' id={setColor}></div></td>
                                    <td className="cohortStudentEntry">{formattedPhoneNumber}</td>
                                </tr>
                            );
                        })}
                    </tbody>
                </table>
            </div>
            </Resizable>
        </Draggable >
    );
};

export default CohortDetails;
