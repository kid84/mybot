module.exports = (robot) ->
  robot.router.post "/github", (req, res) ->
    MAP_SLACK_CHANNEL = {
      # "Githubのリポジトリ名": "SlackのCHANNEL ID"
      # 注意：CHANNEL名ではなくCHANNEL ID
      "kid84/mybot": "C03MX4W8Z"
    }
    send_message = (room_name, message) ->
       robot.send {room: room_name}, message
       res.end "send #{room_name} #{message}"
    if not req.body
       send_message("general", "何かエラー" )
       return
    # res.send req.body
    robot.send {room:"C03MX4W8Z"}, "#{req.body.issue.title}で#{req.body.issue.user}さんが「#{req.body.comment.body}」って言ってます"
    res.status(200).send 'success'
