import { Router } from "express";
import { APIController } from "../controllers/api.controller.js";

export const apiRoute = Router();
const api = new APIController();

apiRoute.get("/", api.index);