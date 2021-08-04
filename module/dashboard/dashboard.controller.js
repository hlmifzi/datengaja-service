import sequelize from "../../config/datasource"
import { Invitations } from "../../model/index"
import ApiResponse from "../../utils/apiResponse"


export const getQty = async (req, res) => {
    try {
        let status = await sequelize.query(
            'SELECT attend_status, COUNT(*) as jumlah FROM invitations  WHERE buyerProductId= ' + req.params.id + ' AND status="AKTIF" GROUP BY attend_status',
            {
                model: Invitations,
                raw: true,
            })
        let data = await sequelize.query(
            'SELECT "semua" as attend_status, COUNT(*) as jumlah FROM invitations  WHERE buyerProductId= ' + req.params.id + ' AND status="AKTIF"',
            {
                model: Invitations,
                raw: true,
            })

        return ApiResponse.ok(res, 'Get data success', [...status, ...data])
    } catch (err) {
        return ApiResponse.internalServerError(res, 'Internal server error', err)
    }
}
