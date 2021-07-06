import bcrypt from "bcryptjs"

import { Catalog } from "../../model/index"
import ApiResponse from "../../utils/apiResponse"

const add = async (req, res) => {
	try {
		let data = await Catalog.create(req.body)
		return ApiResponse.created(res, 'Add success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getAll = async (req, res) => {
	try {
		let data = await Catalog.findAll({
			where: { status: 'AKTIF' },
			attributes: [['id', 'key'], 'namaproduk', 'deskripsi', 'gambar']
		})
		return ApiResponse.ok(res, 'Get all success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getByID = async (req, res) => {
	try {
		let data = await Catalog.findOne({
			where: { id: req.params.id, status: 'AKTIF' }
		})
		return ApiResponse.ok(res, 'Success get by id ', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const update = async (req, res) => {
	try {
		let data = await Catalog.update(req.body,
			{
				where: {
					id: req.params.id,
					status: 'AKTIF'
				}
			})
		return ApiResponse.ok(res, 'Updated success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const deleted = async (req, res) => {
	try {
		let data = await Catalog.update({ "status": "TIDAK AKTIF" }, { where: { id: req.params.id } })
		return ApiResponse.ok(res, 'Deleted success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}


export { add, getAll, getByID, update, deleted }