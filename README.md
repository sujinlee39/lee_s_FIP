# Sujin Lee's Portfolio
one-page website about myself and works.

## Files
- PHP contact from is in the folder of 'php'
- data base is call 'db_about'
- All the image and video files in the 'public/images'

### Social Links 
Links from the footer
- Instagram: https://www.instagram.com/sujin_l2e.98/
- LinkedIn: https://www.linkedin.com/in/sujinl2e98
- GitHub: https://github.com/sujinlee39
- My URL: https://lee-s-portfolio.herokuapp.com/ or http://www.sujinlee06.com

(error has occared for conntecting GitHub to Heroku/ works well in local)

to view it in local need to change 'config.js' as

`const config = { host: "localhost", port: 8889, uname: "root", pword: "root", database: "db_about" }`

and change 'sql.js' as

`const config = require("../config"); 
 const sql = require('mysql');
 const connect = sql.createConnection({
    host: config.host,
    port: config.port,
    user: config.uname,
    password: config.pword,
    database: config.database
});`
