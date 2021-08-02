import express from "express"
import { add, getAll, getByID, update, deleted, getAllByBuyerProductId } from "./invitation.controller"

const router = express.Router()

router.post('/', add)
router.get('/', getAll)
router.get('/getAllByBuyerProductId/:id', getAllByBuyerProductId)
router.get('/:id', getByID)
router.put('/:id', update)
router.delete('/:id', deleted)

export default router