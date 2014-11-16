module.exports = (compound) ->

  express = require 'express'
  app = compound.app

  app.configure ->
    app.enable 'coffee'

#    app.set 'cssEngine', 'stylus'
    app.set 'view engine', 'jade'

    compound.loadConfigs __dirname

    # make sure you run `npm install railway-routes browserify`
    # app.enable 'clientside'
    app.use express.static(app.root + '/public', maxAge: 86400000)
    app.use '/bower_components', express.static(app.root + '/bower_components', maxAge: 86400000)
    app.use express.urlencoded()
#    app.use express.csrf()
    app.use express.json()
    app.use express.cookieParser 'secret'
    app.use express.session secret: 'secret'
    app.use express.methodOverride()
    app.use app.router

