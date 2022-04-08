const mysql = require('mysql');
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');



//Connect to database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'users',
});

db.connect(err => {
    if (err) {
        throw err;
    }
    console.log('Connected');
});

const app = express();
app.use(cors({
    origin: '*'
}));
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());


//Sent Mail
var transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: 'test@gmail.com',
      pass: 'test123'
    }
  });
  
app.post('/email', (req, res) => {
var mailOptions = {
    from:'test@gmail.com', 
    to:'test@gmail.com', 
    subject:'Email with Nodemailer',
    text:`Name: ${req.body.name} \n ----------------------------------------------- \n ${req.body.message}`
}

transporter.sendMail(mailOptions, function(err, info){
    if(err){
        console.log(err);
    }
    else{
        console.log('Email sent: ' + info.response);
    }
  })    
});


//Get all Posts
app.get('/getposts', (req, res) => {
    let sql = `SELECT * FROM posts`;
    let query = db.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send(result)
    });
});


//Get one Post
app.get('/getpost/:id', (req, res) => {
    let sql = `SELECT * FROM posts WHERE post_id = '${req.params.id}'`;
    let query = db.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send(result)
    });
});

//Insert User from vue
app.post('/insertuservue', (req, res) => {
    let data = req.body;
    let sql = `INSERT INTO user SET ?`;
    let query = db.query(sql, data, err => {
        if (err) {
            throw err;
        }
        res.send('User added')
    });
});

//Login User from vue
app.post('/getuservue', (req, res) => {
    let data = req.body.user_name;
    let sql = `SELECT * FROM user WHERE user_name = '${data}'`;
    let query = db.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send(result);
    });
});

app.put('/updatetokenvue', (req, res) => {
    let data = req.body;
    console.log(data);
    let sql = `UPDATE user SET token = '${data.token}' WHERE user_id = '${data.user_id}' `;
    let query = db.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send(result);
        console.log(result);
    });
});

//update User token
app.put('/tokenremove', (req, res) => {
    let tokenzero = '0';
    let tokenone = '1';
    let sql = `UPDATE user SET token = '${tokenzero}' WHERE token = '${tokenone}'`;
    let query = db.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send('Token is 0')
    });
});


app.listen('3000', () => {
    console.log('Server is running on port 3000');
});