const express = require("express");
const app = express();
const port = 3000;
const moment = require('moment');
const path = require("path");
const session = require("express-session");
const flash = require("express-flash");

//configure
app.use(
    session({
        secret: "aabBCc",
        resave: false,
        saveUninitialized: true,
    })
);
app.use(flash());
app.use(express.static(path.join(__dirname, "public")));
app.set('view engine', 'ejs');
app.use(express.urlencoded({extended:true}));
app.use('/', require('./routes/mainRoute'))
app.locals.moment = moment;


app.listen(port, ()=>{
    console.log(`The server is running on localhost:${port}`)
});