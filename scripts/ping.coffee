# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot Alan - Reply with STEVE!!!
#   hubot die - End hubot process
#   hubot Ari? - Reply with Ari.

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]
    
  # with optional trailing question mark
  robot.respond /HELLYEAH(\?)?$/i, (msg) ->
    # using markdown
    msg.send "# #hellyeah!"

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"
    
  robot.respond /Ari(\?)$/i, (msg) ->
    msg.send "Ari."
    
  robot.respond /Alan$/i, (msg) ->
  	msg.send "Steve!!" for x in [1..5]
