var express = require('express');
var router = express.Router();
var userModel = require.main.require('./models/usermodel');

router.get('/', function(request, response){
	if(request.session.loggedUsername!=null){
		var data ={loggesuser:request.session.loggedUsername};
		response.render('home/index',data);
	}
	else{
		response.redirect('/login');
	}
	
});





module.exports=router;