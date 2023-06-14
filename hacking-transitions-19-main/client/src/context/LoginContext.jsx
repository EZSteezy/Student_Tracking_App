import { useState, useContext, createContext } from "react";


const LoginContext = createContext();

export const LoginProvider = ({ children }) => {
    const [showLogin, setShowLogin] = useState(false);
    const [loginPosition, setLoginPosition] = useState({ x: 0, y: 0 });
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [error, setError] = useState(null);
    const [isRegistering, setIsRegistering] = useState(false);

    const handleMouseClick = (e) => {
        const x = e.clientX;
        const y = e.clientY;
        setLoginPosition({ x, y });
        setShowLogin(true);
    };

    const handleLogin = async () => {
        // call the API here using the `email` and `password` values
        // use `setError` to handle any errors
    }

    return (
        <LoginContext.Provider
            value={{
                email,
                setEmail,
                password,
                setPassword,
                isRegistering,
                setIsRegistering,
                showLogin,
                setShowLogin,
                loginPosition,
                handleMouseClick,
                handleLogin,
                error,
                setError,
            }}
        >
            {children}
        </LoginContext.Provider>
    );
};

export const useLogin = () => {
    const context = useContext(LoginContext);
    if (!context) {
        throw new Error("User must login to see cohorts")
    }
    return context;
}

export default { LoginProvider, useLogin };