const faker = require('faker'),
    mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'join_us', 
    password: 'ar2gatos'
});

var q = 'SELECT 1 + 1 AS solution';

connection.query(q, (error, results, fields) => {
    if (error) throw error;
    console.log(results);
    console.log('The solution is: ', results[0].solution);
});

connection.end();