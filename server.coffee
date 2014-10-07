port= 3300
# express instance
express = require('express')
compress = require('compression')
# application instance
app = express()

# using compression middleware
app.use(compress(
  threshold:false
))

oneDay = 86400000;

# added the static conttent
app.use(express.static(__dirname + '/public',{maxAge:oneDay}))

# created router instance from express instance
router = express.Router()

# routes for app
router.get('/', (req, res)->
  res.send('Twitaron')
)

app.use(router)

app.listen(port, ()->
  console.log 'started the app, running on ' + port
)
