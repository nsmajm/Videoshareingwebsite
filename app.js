var express = require('express')
var bodyParser = require('body-parser');
var expressSession = require('express-session');
var app =express();
var port = 1500;

//Configuration
app.set('view engine','ejs');


//Middleware
app.use(bodyParser.urlencoded(
    {
        extended:false
    }
));
app.use(expressSession(
    {
        secret: 'my top secret password',
         saveUninitialized: true,
          resave: false}
        ));
app.get('/',(req,res)=>{
    res.render('home/index');
});
app.listen(port,()=>{
    console.log('server started at port 1500');
});