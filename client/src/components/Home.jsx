import { useState, useEffect } from "react";
import axios from "axios";
import styles from "./Home.module.css";

export const Home = () => {
    const [data, setData] = useState({});

    useEffect(() => {
        const fetchData = async () => {
            try {
                const url = `http://localhost:3000/api`;
                const response = await axios.get(url);
                setData(response.data);
            } catch (error) {
                console.error("Error fetching data: ", error);
            }
        }
        fetchData();
    }, []);

    return (
        <div className={styles.container}>
            <div className={styles.gridContainer}>
                <table className={styles.table}>
                    <thead>
                        <tr>
                            <th>CUIT</th>
                            <th>CUIT Rep.</th>
                            <th>Domicilio</th>
                            <th>Teléfono</th>
                            <th>Actividad</th>
                            <th>Caracter</th>
                            <th>Condición</th>
                        </tr>
                    </thead>
                    <tbody>
                        {data.results && data.results.map((item) => (
                            <tr key={item.id}>
                                <td>{item.cuit}</td>
                                <td>{item.cuitRepresentado}</td>
                                <td>{item.domicilio}</td>
                                <td>{`${item.telefono.tipo} - ${item.telefono.numero}`}</td>
                                <td>{`${item.actividad.codigo} - ${item.actividad.descripcion}`}</td>
                                <td>{item.caracter}</td>
                                <td>{item.condicion}</td>
                            </tr>
                        ))}
                    </tbody>
                </table>

            </div>
        </div>
    )
}