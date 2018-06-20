mongo
use learning_mongo

db.tours.count({ tourPackage: "Cycle California" })

db.tours.aggregate([ { $group: { _id: '$tourPackage', count: { $sum: 1 } } } ])

db.tours.aggregate([ { $group: { _id: '$tourOrganizer.organizerName', count: { $sum: 1 } } } ])

db.tours.aggregate([ { $group: { _id: '$tourPackage', average:{ $avg: '$tourPrice' } count: { $sum: 1 } } } ])

db.tours.aggregate([ { $group: { _id: '$tourPackage', average:{ $avg: '$tourPrice' } count: { $sum: 1 } } }, $out: 'prices' ])

db.prices.find()
