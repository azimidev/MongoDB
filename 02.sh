mongos
db
use learning_mongo
show dbs
db.cars.insert({"make":"bmw"})
show dbs
show collections
print("test")
var arr = ['one', 'two', 'three']
arr

for (i=0; i<10000; i++) {
	db.numbers.insert(
		{"number": i}
	)
}

db.numbers.count()
dn.numbers.find({"number":1})
dn.numbers.find({"number":1}).explain()
dn.numbers.find({"number":1}).explain("executionStats")
db.numbers.createIndex({number:1})
dn.numbers.find({"number":1}).explain("executionStats")
