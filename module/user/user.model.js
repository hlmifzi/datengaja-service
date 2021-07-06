import Sequelize from "sequelize"
import conn from "../../config/datasource"

const User = conn.define('users', {
    id: { type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true },
    email: { type: Sequelize.INTEGER, allowNull: false },
    phone: { type: Sequelize.INTEGER, allowNull: false },
    password: { type: Sequelize.TEXT, allowNull: false },
    type: { type: Sequelize.STRING(50), allowNull: false },
    status: {
        type: Sequelize.STRING(50), allowNull: false, allowNull: true
    },

}, { timestamps: false, freezeTableName: true })


export default User