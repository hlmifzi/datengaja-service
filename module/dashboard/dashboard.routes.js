import express from "express"

import { getQty } from "./dashboard.controller"

const router = express.Router()

router.get('/getQty/:id', getQty)

export default router