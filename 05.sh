mongoimport --db learning_mongo --collection tours --jsonArray --file tours.json

mongo

use learning_mongo
db.tours.find({"tourPackage": "Taste of California"}).explain("executionStats")
# inside executionStats > totalDocsExamined is 87

# Pay attention tourPackage and not "tourPackage" (no double-quote)
db.tours.createIndex({tourPackage: 1})
db.tours.find({"tourPackage": "Taste of California"}).explain("executionStats")
# inside executionStats > totalDocsExamined is 4 (index saved us a lot of query)

db.tours.find({
	"tourPrice": {$lte: 500},
	"tourLength": {$lte: 3}
})
db.tours.find({"tourPrice": {$lte: 500}, "tourLength": {$lte: 3}}).explain("executionStats")

db.tours.createIndex({tourPrice: 1, tourLength: 1})
db.tours.find({"tourPrice": {$lte: 500}, "tourLength": {$lte: 3}}).explain("executionStats")
