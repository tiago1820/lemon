import {
    ActividadesIngresadas,
    Domicilios,
    TodasActividades,
    TiposDeCaracteres,
    CondicionTributaria,
    TitularesIngresados
} from "../db.js";

export class APIHandler {

    getAllDomicilios = async () => {
        try {
            const data = await Domicilios.findAll({
                attributes: [
                    "id",
                    "fechaOperacion",
                    "cuit",
                    "cuitRepresentado",
                    "domicilio",
                    "telefono",
                    "tipoTelefono",
                    "condicionId"],
                order: [["fechaOperacion", "ASC"]],
                raw: true
            });
            return data;
        } catch (error) {
            throw new Error("Error loading data: " + error.message);
        }
    }

    getActividad = async (operacionId) => {
        try {
            const result = await ActividadesIngresadas.findOne({
                attributes: ["id"],
                raw: true,
                where: { operacionId },
                include: [{
                    model: TodasActividades,
                    attributes: ["codigo", "descripcion"]
                }]
            });
            return result;
        } catch (error) {
            throw new Error("Error loading actividad: " + error.message);
        }
    }

    getCaracter = async (operacionId) => {
        try {
            const result = await TitularesIngresados.findOne({
                attributes: ["id"],
                raw: true,
                where: { operacionId },
                include: [{
                    model: TiposDeCaracteres,
                    attributes: ["caracter"]
                }]
            });
            return result;
        } catch (error) {
            throw new Error("Error loading caracter: " + error.message);
        }
    }

    getCondicion = async (condicionId) => {
        try {
            const result = await CondicionTributaria.findOne({
                attributes: ["condicion"],
                raw: true,
            });
            return result;
        } catch (error) {
            throw new Error("Error loading condicion: " + error.message);
        }
    }
}