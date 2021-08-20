// import http from "http"
import https from "https"
import config from "./config"
import app from "./app"
import fs from "fs"
import path from "path"


// server listen
const sslServer = https.createServer({
    key: fs.readFileSync(path.join(__dirname, 'cert', 'key.pem')),
    cert: fs.readFileSync(path.join(__dirname, 'cert', 'cert.pem'))
}, app)

sslServer.listen(config.port, () => console.log(`secure server on ${config.port}`))
