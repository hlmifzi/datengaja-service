import Sequelize from "sequelize"
import conn from "../../config/datasource"

const Catalog = conn.define('buyer_product', {
    id: { type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true },
    user_id: { type: Sequelize.INTEGER, allowNull: false },
    product_id: { type: Sequelize.INTEGER, allowNull: false },
    bride_couple_img: { type: Sequelize.TEXT, allowNull: true },
    bridegroom_full_name: { type: Sequelize.TEXT, allowNull: true },
    bride_full_name: { type: Sequelize.TEXT, allowNull: true },
    bridegroom_call_name: { type: Sequelize.TEXT, allowNull: true },
    bride_call_name: { type: Sequelize.TEXT, allowNull: true },
    bridegroom_mother: { type: Sequelize.TEXT, allowNull: true },
    bridegroom_fathers: { type: Sequelize.TEXT, allowNull: true },
    bride_woman_mother: { type: Sequelize.TEXT, allowNull: true },
    bride_woman_father: { type: Sequelize.TEXT, allowNull: true },
    bride_date: { type: Sequelize.DATE, allowNull: true },
    bride_start_time: { type: Sequelize.TEXT, allowNull: true },
    bride_end_time: { type: Sequelize.TEXT, allowNull: true },
    bride_location: { type: Sequelize.TEXT, allowNull: true },
    reception_date: { type: Sequelize.TEXT, allowNull: true },
    reception_start_time: { type: Sequelize.TEXT, allowNull: true },
    reception_end_time: { type: Sequelize.TEXT, allowNull: true },
    reception_location: { type: Sequelize.TEXT, allowNull: true },
    reception_location_google_maps: { type: Sequelize.TEXT, allowNull: true },
    gallery: { type: Sequelize.TEXT, allowNull: true },
    live_streaming_zoom: { type: Sequelize.TEXT, allowNull: true },
    live_streaming_zoom_meeting_id: { type: Sequelize.TEXT, allowNull: true },
    live_streaming_zoom_password: { type: Sequelize.TEXT, allowNull: true },
    live_streaming_ig: { type: Sequelize.TEXT, allowNull: true },
    live_streaming_ig_account: { type: Sequelize.TEXT, allowNull: true },
    handphone_wa: { type: Sequelize.TEXT, allowNull: true },
    rekening_qr_img: { type: Sequelize.TEXT, allowNull: true },
    rekening: { type: Sequelize.TEXT, allowNull: true },
    is_publish: { type: Sequelize.TEXT, allowNull: true },
    expired_at: { type: Sequelize.TEXT, allowNull: true },
    status_paid: { type: Sequelize.TEXT, allowNull: true },
    created_at: { type: Sequelize.TEXT, allowNull: true },
    updated_at: { type: Sequelize.TEXT, allowNull: true },
    status: {
        type: Sequelize.STRING(50), allowNull: false
    },

}, { timestamps: false, freezeTableName: true })


export default Catalog