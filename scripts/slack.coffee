module.exports = (robot) ->
  robot.router.post '/github2', (req, res) ->
      send_message = (room_name, message) ->
         robot.send {room: room_name}, message
         res.end "send #{room_name} #{message}"

      if not req.body
         send_message("general", "何かエラー" )
         return

      room_name = req.body.room ? "general"
      message   = req.body.message ? "何でもなーい"
      send_message(room_name, message)
