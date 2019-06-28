/* Run this command in the terminal to activate the API :  'node index.js' */

const mysql = require('mysql')
const express = require('express')
let app = express()
const bodyparser = require('body-parser')

app.use(bodyparser.json())

let mysqlConnection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'superheroes'
})

mysqlConnection.connect((err)=>{
  if(!err){
    console.log('DB connection succeded.')
  } else {
    console.log('DB connection failed \n Error : '+ JSON.stringify(err, undefined, 2))
  }
})

app.listen(3000,()=>console.log('Express server is running at port no : 3000'))

//Get Stan Lee Section
app.get('/:name', (req,res)=>{
  let name = req.params.name
  console.log('DB connection succeded.')
  mysqlConnection.query('SELECT * FROM ??', [name], (err, rows, fields)=>{
    if(!err){
      res.send(rows)
    } else {
      console.log(err)
    }
  })
})