import { DataTypes } from "sequelize";

export default (sequelize) => {
    sequelize.define("TiposDeCaracteres", {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        caracter: {
            type: DataTypes.STRING
        },
    }, { timestamps: false });
}