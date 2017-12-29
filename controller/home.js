var express = require('express');
var router = express.Router();
var filemodel = require.main.require('./models/file');
let fs = require('fs');
router.get('/', function(request, response){
	if(request.session.loggedUsername!=null){
		filemodel.getAllVideos(function(result){
			var data = {
				catList: result
			};
			console.log(data)
			response.render('home/index', data);
		});
	}
	else{
		response.redirect('/login');
	}
	
});

module.exports=router;