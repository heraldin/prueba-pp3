//guardo los requerimientos de mysql
const mysql = require('mysql')

//creo la conexion y doy parametros de la BD
const db = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'vue-api-db'
});

//doy arranque a la BD
db.connect();

//imprime un mensaje cuando realizo la conexion
console.log("la conexion fue exitosa!")

module.exports = db;