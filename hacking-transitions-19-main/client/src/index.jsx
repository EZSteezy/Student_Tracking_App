import React from "react";
import { createRoot } from "react-dom/client";
import App from "./components/App/App";
import { LeftColumnProvider } from "./context/LeftColumnContext";
import { RightColumnProvider } from "./context/RightColumnContext";

createRoot(document.getElementById("root")).render(

    <LeftColumnProvider>
        <RightColumnProvider>
            <App /> 
        </RightColumnProvider>   
    </LeftColumnProvider>
    
);
