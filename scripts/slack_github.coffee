module.exports = (robot) ->
  robot.router.post "/github", (req, response) ->
    res.end req.body
