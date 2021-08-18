import Sequelize from "sequelize"

const settings = {
	host: 'localhost',
	dialect: 'mysql', // mysql, postgree
	port: 3306, // 3306, 5344
	pool: {
		min: 0,
		max: 5,
		iddle: 10000
	},
	logging: function (str) {
		console.log(str)
	}
}

const conn = new Sequelize('datengajaid', 'root', '', settings)

export default conn