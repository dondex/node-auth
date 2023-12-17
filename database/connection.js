const mysql = require("mysql");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "blog_db",
});

connection.connect(function (err) {
  if (err) {
    console.error("Error Connecting: " + err.message);
    return;
  }

  console.log("Database Connected");
});

module.exports = connection;
