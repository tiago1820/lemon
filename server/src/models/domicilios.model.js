import { DataTypes } from "sequelize";

export default (sequelize) => {
    sequelize.define("Domicilios", {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        cuit: {
            type: DataTypes.BIGINT,
        },
        cuitRepresentado: {
            type: DataTypes.BIGINT,
        },
        partida: {
            type: DataTypes.INTEGER,
        },
        domicilio: {
            type: DataTypes.STRING,
        },
        superficieAfectada: {
            type: DataTypes.INTEGER,
            defaultValue: null,
        },
        nroHabilitacion: {
            type: DataTypes.INTEGER,
            defaultValue: null,
        },
        fechaInicio: {
            type: DataTypes.STRING,
        },
        fechaCese: {
            type: DataTypes.STRING,
        },
        fechaOperacion: {
            type: DataTypes.DATE,
            allowNull: true
        },
        movimiento: {
            type: DataTypes.STRING
        },
        noAplica: {
            type: DataTypes.INTEGER
        },
        deletedAt: {
            type: DataTypes.DATE
        },
        tipoDomicilio: {
            type: DataTypes.STRING,
            defaultValue: null
        },
        telefono: {
            type: DataTypes.INTEGER,
            defaultValue: null
        },
        tipoTelefono: {
            type: DataTypes.ENUM("Fijo", "Celular"),
            defaultValue: null,
            allowNull: true
        },
        noCorrespondeHabilitacion: {
            type: DataTypes.INTEGER,
            defaultValue: 0
        },
        habilitacionEnTramite: {
            type: DataTypes.INTEGER,
            defaultValue: 0
        }
    }, { timestamps: false });
}