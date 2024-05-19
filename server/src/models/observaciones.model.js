import { DataTypes } from "sequelize";

export default (sequelize) => {
    sequelize.define("Observaciones", {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        operacionId: {
            type: DataTypes.INTEGER,
        },
        observacion: {
            type: DataTypes.STRING
        },
    }, { timestamps: false });
}