import express from "express"
import { add, getAll, getByID, update, deleted, getByUserName } from "./buyerProductRoutes.controller"

const router = express.Router()

router.post('/', add)
router.get('/', getAll)
router.get('/:bridegroom_call_name/:bride_call_name', getByUserName)
router.get('/:id', getByID)
router.put('/:id', update)
router.delete('/:id', deleted)

export default router