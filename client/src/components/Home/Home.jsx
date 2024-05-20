import { useFetchData } from "../../hooks/useFetchData";
import loadingGif from "../../assets/loading.gif";
import { useNavigate } from "react-router-dom";
import styles from "./Home.module.css";

export const Home = () => {
    const { data, loading, error } = useFetchData();
    const navigate = useNavigate();

    if (loading) {
        return (
            <div className={styles.loadingContainer}>
                <img className={styles.loading} src={loadingGif} alt="Loading..." />
            </div>
        );
    }

    if (error) {
        navigate("/NotFound");
    };

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
                                <td>
                                    {item.actividad.codigo && item.actividad.descripcion
                                        ? `${item.actividad.codigo} - ${item.actividad.descripcion}`
                                        : 'Actividad no definida'}
                                </td>
                                <td>{item.caracter || 'Carácter no definido'}</td>
                                <td>{item.condicion || 'Condición no definida'}</td>
                            </tr>
                        ))}
                    </tbody>
                </table>

            </div>
        </div>
    )
}