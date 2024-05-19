import { APIHandler } from "../handlers/api.handler.js";

export class APIController {

    constructor() {
        this.handler = new APIHandler();
    }

    index = async (req, res) => {
        try {
            const domicilios = await this.handler.getAllDomicilios();
            const results = [];
            for (const obj of domicilios) {
                const formattedData = await this.formatData(obj);
                results.push(formattedData);
            }
            const info = { count: results.length }
            return res.status(200).json({ info, results });
        } catch (error) {
            return res.status(500).json({ error: "Internal server error." });
        }
    }

    formatData = async (obj) => {
        const telefono = { tipo: obj.tipoTelefono, numero: obj.telefono };
        obj.telefono = telefono;

        const actividad = await this.handler.getActividad(obj.id);
        const { "TodasActividade.codigo": codigo, "TodasActividade.descripcion": descripcion } = actividad;
        obj.actividad = { codigo, descripcion };
        delete obj.tipoTelefono;

        const tipoCaracter = await this.handler.getCaracter(obj.id);
        const { "TiposDeCaractere.caracter": caracter } = tipoCaracter;
        obj.caracter = caracter;

        const condicion = await this.handler.getCondicion(obj.condicionId);
        obj.condicion = condicion.condicion;
        delete obj.condicionId;

        return obj;
    }
}