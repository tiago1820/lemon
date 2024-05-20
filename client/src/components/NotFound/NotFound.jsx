import notFound from "../../assets/notfound.jpg";
import { Link } from "react-router-dom";
import styles from "./NotFound.module.css";

export const NotFound = () => {
    return (
        <div className={styles.container}>
            <Link className={styles.link} to="/">Volver al inicio</Link>
            <img className={styles.image} src={notFound} alt="Not Found" />
        </div>
    );
};
