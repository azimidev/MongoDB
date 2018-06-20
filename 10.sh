mongoimport --collection people --db learning_mongo --jsonArray --file people.json
mongoimport --collection movies --db learning_mongo --jsonArray --file movies.json

mongo
use learning_mongo

db.people.findOne({ _id: "Brad Pitt" })
db.movies.findOne({ _id: "Fight Club" })

db.people.find({ movies: "The Avengers" })

