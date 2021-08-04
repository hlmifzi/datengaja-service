import express from "express"
import { add, getAll, getByID, update, deleted, getAllByBuyerProductId, getAllByBuyerProductIdQty } from "./invitationCategories.controller"

const router = express.Router()

router.post('/', add)
router.get('/', getAll)
router.get('/getAllByBuyerProductId/:id', getAllByBuyerProductId)
router.get('/getAllByBuyerProductIdQty/:id', getAllByBuyerProductIdQty)
router.get('/:id', getByID)
router.put('/:id', update)
router.delete('/:id', deleted)

export default router