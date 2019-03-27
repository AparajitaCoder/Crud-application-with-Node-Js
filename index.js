const express = require("express");
const mysql = require("mysql");
const bodyparser = require("body-parser");
const port = 3000;
var app = express();

app.use(bodyparser.json());

//db connection
var mysqlconnection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "customers"
});

//check db is  connected or not
mysqlconnection.connect(err => {
  if (!err) console.log("DB connection succeded");
  else
    console.log(
      "DB connection failed \n Error: " + JSON.stringify(err, undefined, 2)
    );
});

//your app will run on port http://localhost:3000
app.listen(port);

//your app will run on port http://localhost:3000/customers
//Get all customers from the database
app.get("/customers", (req, res) => {
  mysqlconnection.query("SELECT * FROM tbl_customers", (err, rows, fields) => {
    if (!err) res.send(rows);
    else console.log(err);
  });
});

//Get particular customer detail from the database
app.get("/customer/:id", (req, res) => {
  mysqlconnection.query(
    "SELECT * FROM tbl_customers WHERE id = ?",
    req.params.id,
    (err, rows, fields) => {
      if (!err) res.send(rows);
      else console.log(err);
    }
  );
});

//Delete particular customer detail from the database
app.delete("/customer/:id", (req, res) => {
  mysqlconnection.query(
    "DELETE FROM tbl_customers WHERE id = ?",
    req.params.id,
    (err, rows, fields) => {
      if (!err) res.send("Deleted Successfully!");
      else console.log(err);
    }
  );
});

//Insert customer detail from the database
app.delete("/customer/:id", (req, res) => {
  mysqlconnection.query(
    "DELETE FROM tbl_customers WHERE id = ?",
    req.params.id,
    (err, rows, fields) => {
      if (!err) res.send("Deleted Successfully!");
      else console.log(err);
    }
  );
});
