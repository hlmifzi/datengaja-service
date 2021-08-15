import Sequelize from "sequelize"
import conn from "../../config/datasource"

const Invitations = conn.define('invitations', {
    id: { type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true },
    buyerProductId: { type: Sequelize.INTEGER, allowNull: false },
    invitation_category_id: { type: Sequelize.INTEGER, allowNull: false },
    fullname: { type: Sequelize.TEXT, allowNull: false },
    phone_wa: { type: Sequelize.TEXT, allowNull: false },
    attend_qty: { type: Sequelize.INTEGER, allowNull: true },
    greetings: { type: Sequelize.TEXT, allowNull: true },
    attend_status: { type: Sequelize.TEXT, allowNull: false },
    present_time: { type: Sequelize.TIME, allowNull: true },
    status: {
        type: Sequelize.STRING(50), allowNull: false, allowNull: true
    },

}, { timestamps: false, freezeTableName: true })


export default Invitations