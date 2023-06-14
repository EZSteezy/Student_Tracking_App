import React, { useState, useEffect } from "react";
import '../../styles/Header.css'

export default function Header(){
    const [ email, setEmail ] = useState("")
    // useEffect(() => {
    //     fetch(`http://localhost:3000/api/users`)
    //         .then(response => response.json())
    //         .then(data => console.log(data))
    //         .catch(error => console.log(error));
    // }, []);

    return(
        <span id="header">
            <span id="home-container">
                <a href="https://www.galvanize.com/">
                    <img src="https://www.galvanize.com/wp-content/uploads/2022/11/galvanize_logo_small-scale_full-color_dark-background.png" alt="Galvanize Logo" />
                </a>
            </span>
            <span id="title-container">
                <h1 id="title">Hacking Transitions</h1>
            </span>
            <span id="greeting-container">
                <h3 id="greeting">Hello, Galvanize Staff Member </h3>
            </span>
        </span>
    )
}