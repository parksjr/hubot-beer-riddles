# Description
#   Deluxe pilsner beer riddles
#
# Configuration:
#   none
#
# Commands:
#   hubot beer riddle - shows a new riddle from under a beer cap
#
# Notes:
#   none
#
# Author:
#   parksjr[@parksjr]

baseRiddles = require '../data/base-riddles.json'

module.exports = (robot) ->
  robot.respond /beer riddle(?: me)?$/, (res) ->
    riddle = res.random baseRiddles.riddles
    res.send riddle.src
