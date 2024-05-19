import { DataTypes } from "sequelize";

export default (sequelize) => {
    sequelize.define("ActividadesIngresadas", {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        operacionId: {
            type: DataTypes.INTEGER
        },
        actividadId: {
            type: DataTypes.INTEGER
        },
        principal: {
            type: DataTypes.INTEGER
        }
    }, { timestamps: false });
}