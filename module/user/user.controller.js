import sequelize from "../../config/datasource"

import { User, Place, Role } from "../../model/index"
import ApiResponse from "../../utils/apiResponse"

const addUser = async (req, res) => {
	try {

		let emailMember = await sequelize.query(
			`SELECT * FROM users WHERE status="AKTIF" AND A.email = "${req.boyemail}"`,
			{
				model: User,
				raw: true,
			})

		if (emailMember.length > 1) return ApiResponse.unAuthorized(res, `Email ${email} telak terdaftar`, emailMember)


		let data = await User.create(req.body)
		return ApiResponse.created(res, 'Add user success', data)
	} catch (err) {
		return ApiResponse.internalServerError(res, 'Internal server error', err)
	}
}

const getAllUser = async (req, res) => {
	try {
		const { email, password } = req.query

		let emailMember = await sequelize.query(
			`SELECT * FROM users WHERE status="AKTIF" AND A.email = "${email}"`,
			{
				model: User,
				raw: true,
			})

		if (emailMember.length < 1) return ApiResponse.unAuthorized(res, `Email ${email} Belum terdaftar`, emailMember)

		let condition = ""
		if (email && password) condition = ` AND A.email = "${email}" AND A.password = "${password}"`
		let data = await sequelize.query(
			'SELECT A.*, B.bridegroom_call_name, B.bride_call_name, B.id as buyerProductId FROM users A LEFT JOIN buyer_product B ON A.id = B.user_id WHERE A.status="AKTIF"' + condition,
			{
				model: User,
				raw: true,
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