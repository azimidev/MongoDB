# CRUD Operations
mongo
use learning_mongo

# Read
db.tours.find({"tourTags": "wine"})

# Create
db.tours.insert({
	"tourName": "The wine of Shiraz",
	"tourLength": 3
	"tourDescription": "Discover Shiraz's wineries",
	"tourPrice": 500,
	"tourTags": ["wine", "Shiraz"]
})

db.tours.find({"tourTags": "wine"})

# Update
db.tours.update({"tourName": "The Wine of Shiraz"}, {$set: {"tourRegion": "Central Iran"}})
db.tours.find({"tourTags": "wine"})

# Update inside array
db.tours.update({"tourName": "The Wine of Shiraz"}, {$addToSet: {"tourTags": "Persia"}})
db.tours.find({"tourTags": "wine"})

# Delete
db.tours.remove({"tourName": "The Wine of Shiraz"})
db.tours.find({"tourTags": "wine"})

# Remove a collection
db.tours.drop()
