fs = require 'fs'
path = require 'path'
csvjson = require 'csvjson'

options = {
    delimiter : ','
    quote     : '"'
}

data = fs.readFileSync(path.join(__dirname,'../data/players.csv'), { encoding : 'utf8' })


json = csvjson.toObject(data, options)

console.log(json)