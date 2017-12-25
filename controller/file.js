var express = require('express');
var router = express.Router();

fileModel=require.main.require('./models/file');


router.get('/', function(request, response){
		response.render('upload/upload');
	});

router.post('/',function(request,response){
	
});

module.exports = router;
