import Sequelize from "sequelize"
import conn from "../../config/datasource"

const Catalog = conn.define('tbdataproduk', {
    id: { type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true },
    namaproduk: { type: Sequelize.TEXT, allowNull: false },
    deskripsi: { type: Sequelize.TEXT, allowNull: false },
    gambar: { type: Sequelize.TEXT, allowNull: true },
    status: {
        type: Sequelize.STRING(50), allowNull: false, allowNull: true
    },

}, { timestamps: false, freezeTableName: true })


export default Catalog