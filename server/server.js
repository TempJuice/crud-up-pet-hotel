//requires
var express = require( 'express' );
var app = express();
var bodyParser = require( 'body-parser' );
var port = 5000;

//middleware
app.use(bodyParser.urlencoded( {extended: true} ));

//spin up server
app.listen(port, function (req, res) {
console.log('Now listening on: ', port);

});