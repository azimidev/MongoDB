mongo
use learning_mongo
db.tours.remove({})
db.tours.createIndex({ "tourName": 1 }, { unique: true })

# in terminal
mongoimport --db learning_mongo --collection tours --jsonArray --file tours.json

# in you get any error fix the file and remove the items and import them again

db.tours.remove({})
mongoimport --db learning_mongo --collection tours --jsonArray --file tours_id.json

db.tours.drop()

mongoimport --db learning_mongo --collection tours --jsonArray --file tours_id.json

# fix the tourName duplicate
db.tours.drop()
