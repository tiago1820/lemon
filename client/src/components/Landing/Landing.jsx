import { Link } from "react-router-dom";
import video from "../../assets/video.mp4";
import logo from "../../assets/image.png";
import styles from "./Landing.module.css";

export const Landing = () => {
    return (
        <div className={styles.container}>
            <video autoPlay loop muted className={styles.videoBg}>
                <source src={video} type="video/mp4" />
            </video>
            <div className={styles.overlay}></div>
            <div className={styles.logoContainer}>
                <img className={styles.logo} src={logo} alt="Logo" />
            </div>
            <div className={styles.buttonContainer}>
                <Link to="/home" className={styles.button}>Examen</Link>
            </div>
        </div>
    )
}