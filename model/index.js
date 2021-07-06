import User from "../module/user/user.model"
import BuyerProducts from "../module/buyerProductRoutes/buyerProductRoutes.model"
import conn from "../config/datasource"

conn.sync({
  // force: true
})


export { User, BuyerProducts }
