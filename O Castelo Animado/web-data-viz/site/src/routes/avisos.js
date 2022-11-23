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
// get para pegar do banco (aceita apenas 1 parâmetro)

router.get("/atualizar_voto/:idUsuario", function (req, res) {
    avisoController.atualizar_voto(req, res);
});

router.delete("/deletar/:idUsuario", function (req, res) {
    avisoController.deletar(req, res);
});
// deletar do banco

module.exports = router;