import sequelize from "../../config/datasource"
import { BuyerProducts, User } from "../../model/index"
import ApiResponse from "../../utils/apiResponse"

const add = async (req, res) => {
	try {
		let creatUser = await User.create({
			...req.body,
			type: 'BUYER'
		})

		let data = await BuyerProducts.create({
			...req.body,
			"user_id": creatUser.id,
			"product_id": 1
		})

		return ApiResponse.created(res, 'Add success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getAll = async (req, res) => {
	try {
		const { start, end } = req.query
		let period = ""
		if (start && end) period = `AND created_at BETWEEN "${start}" AND "${end}"`
		let data = await sequelize.query(
			'SELECT * FROM buyer_product WHERE status="AKTIF" ' + period,
			{
				model: BuyerProducts,
				raw: true,
			})

		return ApiResponse.ok(res, 'Get all success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getByUserName = async (req, res) => {
	try {
		let data = await BuyerProducts.findOne({
			where: {
				bridegroom_call_name: req.params.bridegroom_call_name,
				bride_call_name: req.params.bride_call_name,
				status: 'AKTIF'
			}
		})
		return ApiResponse.ok(res, 'Get all success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getByID = async (req, res) => {
	try {
		let data = await BuyerProducts.findOne({
			where: { id: req.params.id, status: 'AKTIF' }
		})
		return ApiResponse.ok(res, 'Success get by id ', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const update = async (req, res) => {
	try {
		let data = await BuyerProducts.update(req.body,
			{
				where: {
					id: req.params.id,
					status: 'AKTIF'
				}
			})
		return ApiResponse.ok(res, 'Updated success', data)
	} catch (err) {
		console.log("🚀 ~ file: buyerProductRoutes.controller.js ~ line 79 ~ update ~ err", err)
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const deleted = async (req, res) => {
	try {
		let data = await BuyerProducts.update({ "status": "TIDAK AKTIF" }, { where: { id: req.params.id } })
		return ApiResponse.ok(res, 'Deleted success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}


export { add, getAll, getByID, update, deleted, getByUserName }