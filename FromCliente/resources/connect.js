var express = require("express");
var mysql = require("mysql");
var app = express();
var cors = require("cors");

app.use(express.json());
app.use(cors());

var conexion = mysql.createConnection({
  host: "3.229.194.114",
  user: "jonathan",
  password: "1234",
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
        usercli: req.body.USERCLI,
        emauscli: req.body.EMAUSCLI,
        celuscli: req.body.CELUSCLI,
        datuscli: req.body.DATUSCLI,
        msgcli: req.body.MSGCLI
    };
    let sql = "INSERT INTO cliente SET ?";
    conexion.query(sql, data, function (error, results) {
      if (error) {
        throw error;
      } else {
        console.log(data);
        res.send(data);
      }
    });
    });