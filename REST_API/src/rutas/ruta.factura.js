const express = require('express');
const router = express.Router();

const db = require('../database');

//listar facturas
router.get('/factura', (req,res) => {

    db.query('select * from factura', (err,rows) => {
		if(!err){
			res.json(rows);
		}else{
			res.json('Error al traer los datos de la tabla factura');
		}
	});

});

//Guarda factura
router.post('/factura', (req,res) => {
	const unaFac = req.body;
	db.query('insert into factura set ?',[unaFac])
	res.json('La factura se guardado exitosamente');
});

//actualizar factura
router.put('/factura/:codigo', (req,res) => {
	const id = req.params.codigo;
	const unaFac = req.body;
	db.query('update factura set ? where id_factura = ?',[unaFac,id]);
	res.json('La factura se actualizo exitosamente');
});

//Elimina una factura
router.delete('/factura/:id', (req,res) => {
	var id = req.params.id;
	db.query('delete from factura where id_factura = ?',[id]);
	res.json('La factura fue eliminada con exito');
});

//buscar una factura especifica
router.get('/factura/:codigo',(req,res) => {
	const id = req.params.codigo;
	db.query('select * from factura where id_factura = ?',[id],(err,rows) => {
		if(!err)
		{
			res.json(rows);
		}else{
			res.json('ocurrio un error, revisar!')
		}
	});
});

module.exports = router;
