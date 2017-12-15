const express = require('express')
const router = express.Router()
const { check, validationResult } = require('express-validator/check')
const { matchedData, sanitize } = require('express-validator/filter')

router.get('/',(req,res)=>{
  req.getConnection(function(err, connection) {
    if (err) return next(err)
    connection.query(`SELECT * FROM checking_system.sign_in_tabel inner join bootcamp_students on  sign_in_tabel.stu_id=bootcamp_students.stu_id where Date(sign_in_date)=Date(NOW()) ORDER BY sign_id DESC;`, function (err, result, fields) {
         if (err) throw err;
         connection.query(`SELECT * FROM check_ok `, function (err, msg, fields) {
              if (err) throw err;
         res.render('live_checkin', {grab: result, msg: msg})
         connection.query(`UPDATE check_ok SET check_message = '',sound=''`, function (err, msg, fields) {
              if (err) throw err;
            })
       })
      })
    })
})

router.get('/live2',(req,res)=>{
  req.getConnection(function(err, connection) {
    if (err) return next(err)
    connection.query(`SELECT * FROM checking_system.sign_in_tabel inner join bootcamp_students on  sign_in_tabel.stu_id=bootcamp_students.stu_id where Date(sign_in_date)=Date(NOW()) ORDER BY sign_id DESC;`, function (err, result, fields) {
         if (err) throw err;
         connection.query(`SELECT * FROM check_ok`, function (err, msg, fields) {
         res.render('live_checkin2', {grab: result, msg: msg})
         connection.query(`UPDATE check_ok SET check_message = '',sound=''`, function (err, msg, fields) {
              if (err) throw err;
            })
       })
      })
    })
})

module.exports = router
