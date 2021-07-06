import express from "express"
import { add, getAll, getByID, update, deleted } from "./buyerProductRoutes.controller"

const router = express.Router()

router.post('/', add)
router.get('/', getAll)
router.get('/:id', getByID)
router.put('/:id', update)
router.delete('/:id', deleted)

export default router