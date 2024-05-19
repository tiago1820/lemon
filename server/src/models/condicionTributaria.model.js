import { DataTypes } from "sequelize";

export default (sequelize) => {
    sequelize.define("CondicionTributaria", {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        condicion: {
            type: DataTypes.STRING
        },
    }, { timestamps: false });
}