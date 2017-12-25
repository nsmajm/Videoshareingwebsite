var db = require('./db');

module.exports = {
	getAll: function(callback){
		var sql = "SELECT * FROM accounts ORDER BY userid DESC";
		db.getResult(sql, null, function(result){
			callback(result);
		});
	},
	get: function(catid, callback){
		var sql = "SELECT * FROM accounts WHERE userid=?";
		db.getResult(sql, [catid], function(result){
			callback(result[0]);
		});
	},
	insert: function(category, callback){
		var sql = "INSERT INTO accounts VALUES (null, ?, ?)";
		db.executeGetId(sql, [category.name, category.description], function(id){
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
	update: function(category, callback){
		var sql = "UPDATE accounts SET usertype=? WHERE userid=?";
		db.execute(sql, [category.usertype, category.userid], function(flag){
			callback(flag);
		});
	},
	getDelete: function(concertNo, callback){
		var sql = "DELETE FROM accounts WHERE userid=?";
		db.getResult(sql, [concertNo], function(result){
			callback(result[0]);
		});
	}
};