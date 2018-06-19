var MongoClient = require('mongodb').MongoClient;

var url = 'mongodb://localhost:27017';

var findDocument = function (db, callback) {
	var collection = db.db('learning_mongo');

	collection.collection('tours').find({ "tourPackage": "Snowboard Cali" }).toArray(function (err, docs) {
		console.log(docs)
		callback;
	})
}

MongoClient.connect(url, function (err, db) {
	console.log('Connected successfully to server.');

	findDocument(db, function () {
		db.close();
	})
})
