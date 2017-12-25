var express = require('express');
var router = express.Router();
var adminmodel = require.main.require('./models/adminmodel');


router.get('/', function(request, response){
    response.render('admin/index');
});


router.get('/user', function(request, response){
	adminmodel.getAll(function(result){
		var data = {
			catList: result
		};
		response.render('admin/user', data);
	});

});

router.get('/manageuser', function(request, response){
    adminmodel.getAll(function(result){
		var data = {
			catList: result
		};
		response.render('admin/manageuser', data);
	});

});
router.get('/manageuser/edit/:id', function(request, response){
	var catid = request.params.id;
	adminmodel.get(catid, function(category){
		response.render('admin/edituser',category);
	});

});

router.post('/manageuser/edit/:id', function(request, response){
	var concert = {
    userid: request.body.catid,
    usertype: request.body.updateuser

	};

	adminmodel.update(concert, function(success){
		if(success)
		{
			response.redirect('/admin');
		}
		else
		{
			response.send('Error inserting data');
		}
	});

});

router.get('/manageuser/delete/:id', function(request, response){
	var concertNo = request.params.id;
	adminmodel.getDelete(concertNo, function(concert){
		response.redirect('/admin/manageuser')
	});

});


module.exports = router;
