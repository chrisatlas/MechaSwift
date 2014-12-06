# Commands:
# hubot bearcat - Responds with a bearcat fact.

module.exports = (robot) ->
  robot.respond /BEARCAT/i, (msg) ->
    msg.http('http://bearcatfacts.info/')
      .get() (error, response, body) ->
        response = body
        msg.reply("Hey, your fact is: " + response)
