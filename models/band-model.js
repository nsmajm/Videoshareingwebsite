var db = require('./db');

module.exports = {
  getAll: function(callback)
{
  var sql = "SELECT * FROM bands";
  db.getResult(sql, null,function (result)
   {
    callback(result);
  });
},

insert: function(band, callback){
    var sql = "INSERT INTO bands VALUES (null, ?, ?)";
    db.executeGetId(sql, [band.bandName, band.bandType], function(id){
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

  get: function(bandId, callback){
    var sql = "SELECT * FROM bands WHERE bandId=?";
    db.getResult(sql, [bandId], function(result){
      callback(result[0]);
    });
  },

  update: function(band, callback){
    var sql = "UPDATE bands SET bandName=?, bandType=? WHERE bandId=?";
    db.execute(sql, [band.bandName, band.bandType, band.bandId], function(flag){
      callback(flag);
    });
  },

  getDelete: function(bandid, callback){
  var sql = "SELECT * FROM bands WHERE bandId=?";
  db.getResult(sql, [bandid], function(result){
    callback(result[0]);
  });
  },

  delete: function(bandid, callback){
  var sql = "DELETE FROM bands WHERE bandId=?";
  db.execute(sql, [bandid], function(flag){
    callback(flag);
  });
  },


};
