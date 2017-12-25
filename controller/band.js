
var express = require('express');
var router = express.Router();
var bandModel = require.main.require('./models/band-model');//require.main.require() means i am in the app.js path

//Show all Band list
router.get('/', function (request, response) {
    bandModel.getAll(function (result)
    {
        var data = {
          bandlist:result
        };
        response.render('band/index',data);
    });

});

//Create a new Band
router.get('/create', function (request, response) {
  response.render('band/create');
});

//insert
router.post('/create', function(request, response){

    //var convertedconcertdate = new Date(request.body.concertdate)
    var band = {
    bandName: request.body.bandname,
    bandType: request.body.bandtype
  };

  bandModel.insert(band, function(success){
    if(success)
    {
      response.redirect('/band');
    }
    else
    {
      response.send('Error inserting data');
    }
  });

});

router.get('/edit/:id', function(request, response){
  var bandId = request.params.id;
  bandModel.get(bandId, function(band){
    response.render('band/edit', band);
  });

});


router.post('/edit/:id', function(request, response){
  var band = {
    bandId: request.body.bandid,
    bandName: request.body.bandname,
    bandType: request.body.bandtype
  };

  bandModel.update(band, function(success){
    if(success)
    {
      response.redirect('/band');
    }
    else
    {
      response.send('Error inserting data');
    }
  });

});


router.get('/delete/:id', function(request, response){
  var bandid = request.params.id;
  bandModel.getDelete(bandid, function(band){
    response.render('band/delete', band);
  });

});

router.post('/delete/:id', function(request, response){

  var bandid = request.params.id;

bandModel.delete(bandid, function(success){
  
  if(success)
    {
      response.redirect('/band');
    }
    else
    {
      response.send('Error inserting data');
    }
});
});

module.exports = router;
