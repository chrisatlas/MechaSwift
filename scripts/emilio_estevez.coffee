# Commands:
# hubot whatdoyoucallemilio - Responds with an awesome joke.

jsdom = require('jsdom')

module.exports = (robot) ->
  question = undefined
  answer = undefined
  robot.respond /what do you call emilio estevez/i, (msg) ->
    msg.http('http://whatdoyoucallemilioestevez.com/')
      .get() (error, response, body) ->
        jsdom.env(body, ["http://code.jquery.com/jquery.js"], (errors, window) ->
          question = window.$("table.contentpaneopen td h2").html()
          answer = window.$("table.contentpaneopen td h1").html()
          msg.reply("" + question + " *" + answer + "*")
        )

