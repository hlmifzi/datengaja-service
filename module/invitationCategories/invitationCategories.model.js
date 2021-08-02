import Sequelize from "sequelize"
import conn from "../../config/datasource"

const InvitationCategories = conn.define('invitation_categories', {
    id: { type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true },
    buyerProductId: { type: Sequelize.INTEGER, allowNull: false },
    desc: { type: Sequelize.TEXT, allowNull: false },
    session: { type: Sequelize.TEXT, allowNull: true },
    time_start: { type: Sequelize.TIME, allowNull: true },
    time_end: { type: Sequelize.TIME, allowNull: true },
    status: {
        type: Sequelize.STRING(50), allowNull: false, allowNull: true
    },

}, { timestamps: false, freezeTableName: true })


export default InvitationCategories