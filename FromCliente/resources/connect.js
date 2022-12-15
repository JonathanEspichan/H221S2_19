var express = require("express");
var mysql = require("mysql");
var app = express();
var cors = require("cors");

app.use(express.json());
app.use(cors());

var conexion = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "Contactanos",
});

conexion.connect(function (error) {
    if (error) {
      throw error;
    } else {
      console.log("Conexión exitosa");
    }
  });

  const puerto = process.env.PUERTO || 3000;

  app.listen(puerto, function () {
    console.log("Servidor funcionando en puerto: " + puerto);
  });

  app.post("/api/cliente", (req, res) => {
    let data = {
       USERCLI: req.body.USERCLI,
       EMAUSCLI: req.body.EMAUSCLI,
       CELUSCLI: req.body.CELUSCLI,
       DATUSCLI: req.body.DATUSCLI,
       MSGCLI: req.body.MSGCLI
    };
    let sql = "INSERT INTO CLIENTE SET ?";
    conexion.query(sql, data, function (error, results) {
      if (error) {
        throw error;
      } else {
        console.log(data);
        res.send(data);
      }
    });
    });