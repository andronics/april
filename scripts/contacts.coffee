im = require '@slack/interactive-messages'

module.exports = (robot) =>

    robot.hear /lookup contact for (.*)/i, (res) ->

        # get requester info
        user = res.envelope.user.name
        res.send "it was me"
