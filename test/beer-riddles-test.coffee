Helper = require 'hubot-test-helper'
expect = require('chai').expect
helper = new Helper '../src/beer-riddles.coffee'

class MockResponse extends Helper.Response
  random: (items) ->
    {
      "src": "http://i.imgur.com/DV4YXXd.jpg",
      "id" : 11,
      "answer":""
    }

describe 'beer-riddles', ->
  beforeEach ->
    @room = helper.createRoom({httpd:false, 'response': MockResponse})
  context 'user wants a beer cap riddle', ->
    beforeEach ->
      @room.user.say 'kevin', 'hubot beer riddle me'
    it 'should respond with a beer cap riddle image url', ->
      expect(@room.messages).to.eql [
        ['kevin', 'hubot beer riddle me']
        ['hubot', 'http://i.imgur.com/DV4YXXd.jpg']
      ]
