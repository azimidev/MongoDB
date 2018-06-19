mongo
use learning_mongo

db.tours.createIndex({ tourDescription: "text", tourBlurb: "text" })

db.tours.find({ $text: { $search:"wine" } }).pretty()
db.tours.find({ $text: { $search:"wine" } }, {score: { $meta: "textScore" } }).pretty()
db.tours.find({ $text: { $search:"wine" } }, {score: { $meta: "textScore" } }).pretty().sort({score: { $meta: "textScore" } })
db.tours.find({ $text: { $search:"wine" } }, {score: { $meta: "textScore" }, tourName: 1, _id: 0 }).pretty().sort({score: { $meta: "textScore" } })

db.tours.find({tourDescription: {$regex:/backpack/}}, {tourName: 1, _id: 0}).pretty()
db.tours.find({tourDescription: {$regex:/backpack/i}}, {tourName: 1, _id: 0}).pretty()

db.tours.find({tourDescription: /backpack/i}, {tourName: 1, _id: 0}).pretty()
