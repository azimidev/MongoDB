# importing
mongoimport --help

# namespace options
# input options

mongoimport --db learning_mongo --collection tours --jsonArray --file tours.json

mongo

use learning_mongo

show collections

db.tours.count()

db.tours.find({"tourTags": "hiking"})
