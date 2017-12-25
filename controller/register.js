var express = require('express');
var router = express.Router();
var concertsModel = require.main.require('./models/registermodel');



router.get('/', function(request, response){
		response.render('user/register');
	});

router.post('/', function(request, response){

		//var convertedconcertdate = new Date(request.body.concertdate)
		var concert = {
    firstname: request.body.firstname,
    lastname: request.body.lastname,
    username: request.body.username,
    password: request.body.password,
    email:request.body.email
  };
console.log(concert);
  concertsModel.insert(concert, function(success){
		if(success)
		{
			response.redirect('/login');
		}
		else
		{
			response.send('Error inserting data');
		}
	});

});



module.exports = router;
