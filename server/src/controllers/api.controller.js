import { APIHandler } from "../handlers/api.handler.js";

export class APIController {

    constructor() {
        this.handler = new APIHandler();
    }

    index = async (req, res) => {
        try {
            const domicilios = await this.handler.getAllDomicilios();
            const results = await Promise.all(domicilios.map(obj => this.formatData(obj)));
            const count = results.length;
            return res.status(200).json({ count, results });
        } catch (error) {
            console.log(error);
            return res.status(500).json({ error: "Internal server error." });
        }
    }

    formatData = async (obj) => {
        obj.telefono = { tipo: obj.tipoTelefono, numero: obj.telefono };
        delete obj.tipoTelefono;

        const actividad = await this.handler.getActividad(obj.id);
        const {
            "TodasActividade.codigo": codigo = null,
            "TodasActividade.descripcion": descripcion = null
        } = actividad || {};
        obj.actividad = { codigo, descripcion };

        const tipoCaracter = await this.handler.getCaracter(obj.id);
        obj.caracter = tipoCaracter ? tipoCaracter["TiposDeCaractere.caracter"] : null;

        const condicion = await this.handler.getCondicion(obj.condicionId);
        obj.condicion = condicion ? condicion.condicion : null;
        delete obj.condicionId;

        return obj;
    }
}