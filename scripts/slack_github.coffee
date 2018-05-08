module.exports = (robot) ->
  robot.router.post "/github", (req, res) ->
    # send_message = (room_name, message) ->
    #    robot.send {room: room_name}, message
    #    res.end "send #{room_name} #{message}"
    # if not req.body
    #    send_message("general", "何かエラー" )
    #    return
    res.end req.body
