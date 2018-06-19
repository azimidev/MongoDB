mongo
use learning_mongo
db.tours.drop()
mongoimport --collection tours --db learning_mongo --file tours.json --jsonArray

mongo
db.tours.find()
db.tours.find({}, {tourName: 1})
db.tours.find({}, {tourName: 1, _id: 0})
db.tours.find({}, {tourName: 1, tourPrice: 1, tourLength: 1, _id: 0})
db.tours.find({}, {tourName: 1, tourPrice: 1, tourLength: 1, _id: 0}).pretty()
db.tours.find({}, {tourName: 1, tourPrice: 1, tourLength: 1, _id: 0}).pretty().sort({tourPrice: -1})
db.tours.find({}, {tourName: 1, tourPrice: 1, tourLength: 1, _id: 0}).pretty().sort({tourPrice: 1})
db.tours.find({}, {tourName: 1, tourPrice: 1, tourLength: 1, _id: 0}).pretty().sort({tourPrice: -1}).limit(1)
db.tours.find({}, {tourName: 1, tourPrice: 1, tourLength: 1, _id: 0}).pretty().sort({tourPrice: -1}).limit(1).skip(20)

db.tours.find({tourPrice: {$lte: 1000, $gte:800}}).pretty()
