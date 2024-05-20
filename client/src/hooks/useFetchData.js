import { useState, useEffect } from "react";
import axios from "axios";

export const useFetchData = () => {
    const [data, setData] = useState({});
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);

    useEffect(() => {
        const fetchData = async () => {
            try {
                const url = `http://localhost:3000/api`;
                const response = await axios.get(url);
                setData(response.data);
                setLoading(false);
            } catch (error) {
                console.log("Error fetching data: ", error);
                setError(error);
                setLoading(false);
            }
        };
        fetchData();
    }, []);

    return { data, loading, error };
}