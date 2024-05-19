import { Sequelize } from "sequelize";
import {
    DB_USER,
    DB_PASSWORD,
    DB_HOST,
    DB_PORT,
    DB_NAME
} from "./constants/index.js";

import ActividadesIngresadasModel from "./models/actividadesIngresadas.model.js";
import CondicionTributariaModel from "./models/condicionTributaria.model.js";
import DomiciliosModel from "./models/domicilios.model.js";
import ObservacionesModel from "./models/observaciones.model.js";
import TiposDeCaracteresModel from "./models/tiposDeCaracteres.model.js";
import TitularesIngresadosModel from "./models/titularesIngresados.model.js";
import TodasActividadesModel from "./models/todasActividades.model.js";

const sequelize = new Sequelize(
    `postgres://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}`,
    { logging: false, native: false }
);

ActividadesIngresadasModel(sequelize);
CondicionTributariaModel(sequelize);
DomiciliosModel(sequelize);
ObservacionesModel(sequelize);
TiposDeCaracteresModel(sequelize);
TitularesIngresadosModel(sequelize);
TodasActividadesModel(sequelize);

const {
    ActividadesIngresadas,
    CondicionTributaria,
    Domicilios,
    Observaciones,
    TiposDeCaracteres,
    TitularesIngresados,
    TodasActividades
} = sequelize.models;

TiposDeCaracteres.hasMany(TitularesIngresados, { foreignKey: "caracterId" });
TitularesIngresados.belongsTo(TiposDeCaracteres, { foreignKey: "caracterId" });

Domicilios.hasMany(TitularesIngresados, { foreignKey: "operacionId" });
TitularesIngresados.belongsTo(Domicilios, { foreignKey: "operacionId" });

Domicilios.hasMany(Observaciones, { foreignKey: "operacionId" });
Observaciones.belongsTo(Domicilios, { foreignKey: "operacionId" });

Domicilios.hasMany(ActividadesIngresadas, { foreignKey: "operacionId" });
ActividadesIngresadas.belongsTo(Domicilios, { foreignKey: "operacionId" });

TodasActividades.hasMany(ActividadesIngresadas, { foreignKey: "actividadId" });
ActividadesIngresadas.belongsTo(TodasActividades, { foreignKey: "actividadId" });

CondicionTributaria.hasMany(Domicilios, { foreignKey: "condicionId" });
Domicilios.belongsTo(CondicionTributaria, { foreignKey: "condicionId" });

export {
    ActividadesIngresadas,
    CondicionTributaria,
    Domicilios,
    Observaciones,
    TiposDeCaracteres,
    TitularesIngresados,
    TodasActividades,
    sequelize as conn
};