// DECLARATION
var express = require('express');
var bodyParser = require('body-parser');
var expressSession = require('express-session');
// var upload = require('express-fileupload');

var app = express();
// app.use(upload());
var login = require('./controller/login');
var register = require('./controller/register');
var home = require('./controller/home');
var logout = require('./controller/logout');
var admin = require('./controller/admin');
var upload = require('./controller/file');

var ticket = require('./controller/ticket');

var band = require('./controller/band');
var concert = require('./controller/concerts');
// CONFIGURATION
app.set('view engine', 'ejs');


// MIDDLEWARES
app.use(bodyParser.urlencoded({extended:false}));
app.use(expressSession({secret: 'my top secret password', saveUninitialized: true, resave: false}));

// ROUTES
app.use('/login', login);
app.use('/register',register);
app.use('/home',home);
app.use('/logout',logout);
app.use('/admin',admin);
app.use('/upload',upload);
app.use('/tickets', ticket);
app.use('/band',band);
app.use('/concert', concert);
app.get('/', function(req, res){
	res.redirect('/login');
});

// SERVER
app.listen(1337, function(){
	console.log('server started ...');
});