import express from "express";
import bodyParser from "body-parser"
import routes from "./module/routes"
import cors from "cors"
import errorhandler from "./middleware/errorhandler"

const app = express()
require('./model')

app.use(bodyParser.json({
    limit: "50mb"
}))
app.use(cors())
app.use(routes)

// index
app.get('/', (req, res) => {
    res.json({
        title: 'sipp',
        body: 'Hi, rian6517@gmail.com'
    })
})

app.use(errorhandler)

export default app
