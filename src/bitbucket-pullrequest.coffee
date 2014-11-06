# Description
#   A hubot script that notifies pull requests
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Felipe Oliveira[@<org>]

module.exports = (robot) ->
  robot.router.post '/bitbucket-pullrequest', (req, res) ->
    payload = req.body
    console.log(payload)
    if payload.pullrequest_created
      payload = payload.pullrequest_created
      msg = "Pull request ##{payload.id}: #{payload.title}
 (#{payload.destination.repository.full_name}) by @#{payload.author.username}"
      robot.messageRoom req.query.room, msg
    res.end 'OK'
