import sequelize from "../../config/datasource"
import { BuyerProducts, User } from "../../model/index"
import ApiResponse from "../../utils/apiResponse"

const add = async (req, res) => {
	try {

		let emailMember = await sequelize.query(
			`SELECT * FROM users WHERE status="AKTIF" AND email = "${req.body.email}"`,
			{
				model: User,
				raw: true,
			})

		if (emailMember.length !== 0) return ApiResponse.unAuthorized(res, `Email ${req.body.email} telah terdaftar, Silahkan Masuk`, emailMember)


		let creatUser = await User.create({
			...req.body,
			type: 'BUYER'
		})

		let data = await BuyerProducts.create({
			...req.body,
			"background1": "/img/2.jpeg",
			"background2": "/img/6.jpeg",
			"bride_couple_img": "/img/1.jpeg",
			"bridegroom_img": "/img/3.jpeg",
			"bride_img": "/img/4.jpeg",
			"gallery": "/img/2.jpeg|/img/7.jpeg|/img/5.jpeg|/img/6.jpeg",
			"rekening_qr_img": "/img/qrcode.jpeg",
			"user_id": creatUser.id,
			"reception_location_google_maps": '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.4408681594346!2d106.88866431410297!3d-6.205430862513204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f4a2d70819c1%3A0x34c8dff84ebb630e!2sGg.%20Anyelir%2C%20RT.5%2FRW.2%2C%20Cipinang%2C%20Kec.%20Pulo%20Gadung%2C%20Kota%20Jakarta%20Timur%2C%20Daerah%20Khusus%20Ibukota%20Jakarta%2013240!5e0!3m2!1sen!2sid!4v1623944384045!5m2!1sen!2sid" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>',
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
		if (start && end) period = `AND A.reception_date BETWEEN "${start}" AND "${end}"`
		let data = await sequelize.query(
			'SELECT A.*, B.* FROM buyer_product A JOIN users B on A.user_id = B.id WHERE B.status="AKTIF" ' + period,
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
		const condition = `AND A.bridegroom_call_name="${req.params.bridegroom_call_name}" AND A.bride_call_name="${req.params.bride_call_name}"`

		let data = await sequelize.query(
			'SELECT A.*, B.phone FROM buyer_product A JOIN users B on A.user_id = B.id WHERE A.status="AKTIF" ' + condition,
			{
				model: BuyerProducts,
				raw: false,
			})
		return ApiResponse.ok(res, 'Get all success', data[0])
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