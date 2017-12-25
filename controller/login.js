var express = require('express');
var router = express.Router();
var userModel = require.main.require('./models/usermodel');


router.get('/', function(request, response){
	response.render('user/login');
});

router.post('/', function(request, response){
	
	var user = {
		username: request.body.username,
		password: request.body.password
	};

	userModel.validate(user, function(valid){
		if(valid)
		{
			request.session.loggedUsername = request.body.username;
			if(request.session.loggedUsername=='admin'){
			response.redirect('/admin');
			}
			else{
				response.redirect('/home');
			}
			
		}
		else
		{
			console.log(request.session.loggedUsername);
			response.redirect('/login');
		}
	});
});

module.exports = router;
