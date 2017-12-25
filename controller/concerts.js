var express = require('express');
var router = express.Router();
var concertsModel = require.main.require('./models/concert-model');


	router.get('/', function(request, response){
		concertsModel.getAll(function(result){
			var data = {
				catList: result
			};
			response.render('concert/index', data);
		});

	});


	router.get('/create', function(request, response){
		response.render('concert/create');
	});

router.post('/create', function(request, response){

		//var convertedconcertdate = new Date(request.body.concertdate)
		var concert = {
    bandName: request.body.bandname,
    concertName: request.body.concertname,
    concertDateTime: request.body.concertdate,
    concertVenue: request.body.concertvenue,
    ticketQuantity:request.body.quantity,
    perTicketPrice: request.body.price
  };

  concertsModel.insert(concert, function(success){
		if(success)
		{
			response.redirect('/concert');
		}
		else
		{
			response.send('Error inserting data');
		}
	});

});

router.get('/edit/:id', function(request, response){
	var concertNo = request.params.id;
	concertsModel.get(concertNo, function(concert){
		response.render('concert/edit', concert);
	});

});

router.post('/edit/:id', function(request, response){
	var concert = {
		concertNo: request.body.concertno,
		bandName: request.body.bandname,
		concertName: request.body.concertname,
		concertDateTime: request.body.concertdate,
		concertVenue: request.body.concertvenue,
		ticketQuantity: request.body.quantity,
		perTicketPrice: request.body.price
	};

	concertsModel.update(concert, function(success){
		if(success)
		{
			response.redirect('/concert');
		}
		else
		{
			response.send('Error inserting data');
		}
	});

});

router.get('/delete/:id', function(request, response){
	var concertNo = request.params.id;
	concertsModel.getDelete(concertNo, function(concert){
		response.render('concert/delete', concert);
	});

});

router.post('/delete/:id', function(request, response){

		//var convertedconcertdate = new Date(request.body.concertdate)
		var concertno = request.params.id;

  concertsModel.Delete(concertno, function(success){
		if(success)
		{
			response.redirect('/concert');
		}
		else
		{
			response.send('Error inserting data');
		}
	});

});

module.exports = router;
