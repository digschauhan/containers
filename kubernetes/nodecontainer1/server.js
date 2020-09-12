var express = require('express');

var app = express();

app.get('/', function (req, res){
    res.send('Hello from node1 applicaiton !');
});

app.listen(4000, function() {
    console.log('Listening on port 4000 !');
    console.log('     http://localhost:4000');
});