var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.post("/votar", function (req, res) {
    avisoController.votar(req, res);
}); 
// post para inserir no banco

router.get("/acrescentar_voto", function (req, res) {
    avisoController.acrescentar_voto(req, res);
});
// get para pegar do banco

module.exports = router;