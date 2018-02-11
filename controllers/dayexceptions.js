const express = require('express')
const router = express.Router()
var dateFormat = require('dateformat');
var DateDiff = require('date-diff');
// get signin table by studentid.
router.get('/', (req,res)=>{
  var date = new Date();
      req.getConnection(function(err, connection) {
        if (err) return next(err);
        connection.query("SELECT * FROM exception_day order by day_id ", function (err, days, fields) {
         if (err) throw err;

               res.render('dayexceptions',{days:days})
               res.end();
        });
    });
});




// get signin table by studentid.
router.post('/update', (req,res)=>{
  req.getConnection(function(err, connection) {
    if (err) return next(err);
    connection.query("SELECT * FROM exception_day order by day_id ", function (err, days, fields) {
     if (err) throw err;
    days.forEach(function(rx){

      txtvar="day"+rx.day_id.toString();
 if(req.sanitize(txtvar).trim()!= '' && req.sanitize(txtvar).trim()!= null){
   dayex=1;
 }else {
   dayex=0;
}
         var sql = "update exception_day set day_exception=" + dayex + " where day_id =" + rx.day_id + "   ";
                         connection.query(sql, function (err, rup) {
                           if (err) throw err;
           });
       });
   });
});

       req.getConnection(function(err, connection) {
         if (err) return next(err);
       connection.query("SELECT * FROM exception_day order by day_id ", function (err, days, fields) {
         if (err) throw err;

              res.render('dayexceptions',{days:''});

       });
    });
//XX+++++++++++++++++++++++++++++++++++++++++++++++++++++++ Save exceptions

});





module.exports = router
