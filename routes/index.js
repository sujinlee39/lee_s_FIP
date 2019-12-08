const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, title, Image FROM tbl_work";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        //console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { info: result });
    })
})

router.get('/info/:id', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the user route');
    console.log(req.params.id); // 1, 2 3 or whatever comes after the slash

    let query = `SELECT * from tbl_workinfo WHERE workID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // convert the tools property into an array
        // before we send it thru
        // map is an array method that lets you map one values to another (covert it)
        result[0].tools = result[0].tools.split(",").map(function(item){
            item = item.trim();
            // item.trim() removes any empty whit space from text

            return item;
        })

        console.log("after trim/ conversion:", result[0]);

        // render the home view with dynamic data
        res.json(result[0]);
    })
})

module.exports = router;