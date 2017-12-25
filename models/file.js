var db = require('./db');

module.exports = {

  getAll: function(callback){
		var sql = "SELECT * FROM bandconcerts";
		db.getResult(sql,null, function(result){
			callback(result);
		});
	},


  insert: function(concert, callback){
		var sql = "INSERT INTO contents VALUES (null, ?, ?, ?, ?, ?, ?)";
    db.executeGetId(sql, [
												concert.filename, 
												concert.userid,
												concert.videoupload, 
												concert.thumbnailupload,
												concert.filecategory,
												concert.filetype], function(id){
      if(id <= 0)
      {
        callback(false);
      }
      else
      {
        callback(true);
      }
    });
  },

  get: function(concertNo, callback){
		var sql = "SELECT * FROM bandconcerts WHERE concertNo=?";
		db.getResult(sql, [concertNo], function(result){
			callback(result[0]);
		});
	},

  update: function(concert, callback){
		var sql = "UPDATE bandconcerts SET bandName=?, concertName=?, concertDateTime=?, concertVenue=?, ticketQuantity=?, perTicketPrice=? WHERE concertNo=?";
		db.execute(sql, [concert.bandName, concert.concertName, concert.concertDateTime, concert.concertVenue, concert.ticketQuantity, concert.perTicketPrice, concert.concertNo], function(flag){
			callback(flag);
		});
	},


  getDelete: function(concertNo, callback){
		var sql = "SELECT * FROM bandconcerts WHERE concertNo=?";
		db.getResult(sql, [concertNo], function(result){
			callback(result[0]);
		});
	},

};
