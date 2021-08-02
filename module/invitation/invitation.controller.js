import { Invitations } from "../../model/index"
import ApiResponse from "../../utils/apiResponse"
import sequelize from "../../config/datasource"


const add = async (req, res) => {
	try {
		let data = await Invitations.create(req.body)
		return ApiResponse.created(res, 'Add success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getAll = async (req, res) => {
	try {
		let data = await Invitations.findAll({
			where: { status: 'AKTIF' }
		})
		return ApiResponse.ok(res, 'Get all success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getAllByBuyerProductId = async (req, res) => {
	try {
		let data = await sequelize.query(
			'SELECT A.*, B.desc FROM invitations A LEFT JOIN invitation_categories B ON A.invitation_category_id = B.id  WHERE A.buyerProductId= ' + req.params.id + ' AND A.status="AKTIF"',
			{
				model: Invitations,
				raw: true,
			})
		return ApiResponse.ok(res, 'Get all success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getByID = async (req, res) => {
	try {
		let data = await Invitations.findOne({
			where: { id: req.params.id, status: 'AKTIF' }
		})
		return ApiResponse.ok(res, 'Success get by id ', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const update = async (req, res) => {
	try {
		let data = await Invitations.update(req.body,
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
		let data = await Invitations.update({ "status": "TIDAK AKTIF" }, { where: { id: req.params.id } })
		return ApiResponse.ok(res, 'Deleted success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}


export { add, getAll, getByID, update, deleted, getAllByBuyerProductId }