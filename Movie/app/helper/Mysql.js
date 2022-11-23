const mysql = require('mysql')
const connection =  mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'movie',
    multipleStatements:true
})
connection.connect(function(err){
     if(!!err){
        console.log(err)
     }else{
        console.log('Mysql connected!')
     }
})

module.exports = connection
