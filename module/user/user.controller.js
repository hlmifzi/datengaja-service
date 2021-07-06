import bcrypt from "bcryptjs"

import { User, Place, Role } from "../../model/index"
import ApiResponse from "../../utils/apiResponse"

const addUser = async (req, res) => {
	try {
		let data = await User.create(req.body)
		return ApiResponse.created(res, 'Add user success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getAllUser = async (req, res) => {
	try {
		let data = await User.findAll({
			where: { status: 'AKTIF' },
			attributes: [['id', 'key'], 'email', 'phone', 'password']
		})
		return ApiResponse.ok(res, 'Get all user success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getUserByID = async (req, res) => {
	try {
		let data = await User.findOne({
			where: { id: req.params.id, status: 'AKTIF' }
		})
		return ApiResponse.ok(res, 'Get user by id success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const updateUser = async (req, res) => {
	try {
		let data = await User.update(req.body, { where: { id: req.params.id } })
		return ApiResponse.ok(res, 'Updated user success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const deleteUser = async (req, res) => {
	try {
		let data = await User.update({ "status": "TIDAK AKTIF" }, { where: { id: req.params.id } })
		return ApiResponse.ok(res, 'Deleted user success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}


export { addUser, getAllUser, getUserByID, updateUser, deleteUser }