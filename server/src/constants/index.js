import dotenv from "dotenv";
dotenv.config();
const {
    DB_USER,
    DB_PASSWORD,
    DB_HOST,
    DB_PORT,
    DB_NAME,
    SERVER_PORT,
    SERVER_BASE_URL } = process.env;

export {
    DB_USER,
    DB_PASSWORD,
    DB_HOST,
    DB_PORT,
    DB_NAME,
    SERVER_PORT,
    SERVER_BASE_URL
}