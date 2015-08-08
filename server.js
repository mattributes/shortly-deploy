var app = require('./server-config.js');

var port = process.env.PORT || 4568;
console.log("process.env.PORT", process.env.PORT);
console.log("process.env", process.env);

app.listen(port);

console.log('Server now listening on port ' + port);
console.log(process.env.ISPROD);
