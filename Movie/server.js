const express = require('express');
const app = express();
const PORT = 8000;
const index = require('./route/web');
const panel = require('./route/panel');
var bodyParser =    require("body-parser");

app.set('views',__dirname + '/resource/view');
app.set('view engine','ejs');
app.use(express.static(__dirname));
app.use(express.static('public/css'));
app.use(express.static('public/js'));
app.use(express.static('public/assets'));
app.use(express.static('storage'));
app.use(bodyParser.json());
app.use(express.urlencoded({extended:true}));
app.use(index.home);
app.use(panel.dashboard);

app.listen( PORT, function() {
   console.log( 'server running on ' + PORT );
});


 