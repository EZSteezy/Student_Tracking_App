import React, { useState } from "react";
import StudentAppointments from "./StudentAppointments";
import "../../styles/RightColumn.css"
import AddReminder from "./AddReminder";
import DeleteReminder from "./DeleteReminder";
import ChangeReminder from "./ChangeReminder";

export default function RightColumn(){
    const[ showAddModal, setShowAddModal ] = useState(false)
    const[ editNote, setEditNote ] = useState(false)
    const[ deleteNote, setDeleteNote ] = useState(false)

    const handleAddClick = () =>{
        setShowAddModal(true)
    }

    const handleEditClick = () =>{
        setEditNote(true)
    }

    const handleDeleteClick = () =>{
        setDeleteNote(true)
    }

    return(
        <div className="Appointments">
            <div className="RemindersHeader">
                Appointment Notes
            </div>
            <div className="buttons">
                <button className="addButton" onClick={handleAddClick}>
                    Add
                </button>
                <button className="editButton" onClick={handleEditClick}>
                    Edit
                </button>
                <button className="deleteButton" onClick={handleDeleteClick}>
                    Delete
                </button>
            </div>
            <div className="StudentNames">
                <StudentAppointments/>
            </div>
            {showAddModal && <AddReminder setShowAddModal = {setShowAddModal}/>}
            {editNote && <ChangeReminder setEditNote = {setEditNote}/>}
            {deleteNote && <DeleteReminder setDeleteNote = {setDeleteNote}/>}
        </div>
    );
}