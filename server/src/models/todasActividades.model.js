import { DataTypes } from "sequelize";

export default (sequelize) => {
    sequelize.define("TodasActividades", {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        codigo: {
            type: DataTypes.INTEGER
        },
        descripcion: {
            type: DataTypes.STRING
        },
        activo: {
            type: DataTypes.STRING,
            defaultValue: null,
        }
    }, { timestamps: false })
}