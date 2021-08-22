import express from "express"
import { addUser, getAllUser, getUserByID, updateUser, deleteUser } from "./user.controller"

const router = express.Router()

router.get('/', getAllUser)
router.get('/:id', getUserByID)
router.post('/', addUser)
router.put('/', updateUser)
router.delete('/:id', deleteUser)

export default router