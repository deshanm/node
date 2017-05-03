var express = require('express');
var app = express();

app.get('/',function(req,res) {
  res.send("Running On Port");
});

app.listen(4000);
