import { DataTypes } from "sequelize";

export default (sequelize) => {
    sequelize.define("TitularesIngresados", {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        operacionId: {
            type: DataTypes.INTEGER
        },
        caracterId: {
            type: DataTypes.INTEGER
        },
        cuitTitular: {
            type: DataTypes.BIGINT
        },
        razonSocial: {
            type: DataTypes.STRING
        }
    }, { timestamps: false });
}