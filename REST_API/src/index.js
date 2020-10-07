//constante de todo lo que nos ofrece express
const express = require('express');
const cors = require('cors');

//se inicializa y guarda las funcionalidades de express
const server = express();

server.set('port', process.env.PORT || 3000);

//el formato de envio y recepcion de datos sera en json
server.use(express.json());

//permite la comunicacion entre servidores en este caso con cliente
server.use(cors());

//nuestras rutas
server.use(require('./rutas/ruta.factura'));

//le damos arranque a nuestro servidor
server.listen( server.get('port') );

//muestra mensaje
console.log('servidor de desarrollo en el puerto', server.get('port'));