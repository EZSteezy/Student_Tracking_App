import React, { createContext, useContext, useEffect, useState } from "react";
import jwtDecode from "jwt-decode";

const UserContext = createContext({ user: null, setUser: () => {}, isAuthenticated: false });

export const UserProvider = ({ children }) => {
    const [user, setUser] = useState(() => {
        const token = localStorage.getItem('token');

        if (token) {
            const decodedToken = jwtDecode(token);
            const currentTime = Date.now() / 1000;
            if (decodedToken.exp > currentTime) {
                // token is not expired
                return decodedToken;
            }
        }
        // token is expired or does not exist
        return null;
    });
    // TODO: Wrap the app with this UserProvider
    const [isAuthenticated, setIsAuthenticated] = useState(user !== null);

    useEffect(() => {
        setIsAuthenticated(user !== null);
    }, [user]);

    return (
        <UserContext.Provider value={{ user, setUser, isAuthenticated }}>
            {children}
        </UserContext.Provider>
    );
};

export const useUser = () => {
const context = useContext(UserContext);
    
if (context === null) { 
    throw new Error("User is not authenticated");
}

return context;
};