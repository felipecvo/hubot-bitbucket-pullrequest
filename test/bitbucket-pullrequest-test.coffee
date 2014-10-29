assert = require 'power-assert'
sinon = require 'sinon'
express = require 'express'
request = require 'supertest'
app = express()

describe 'bitbucket-pullrequest', ->
  beforeEach ->
    app.use express.bodyParser()
    @robot =
      messageRoom: sinon.spy()
      router: app

    require('../src/bitbucket-pullrequest')(@robot)

  it 'registers a route', (done) ->
    robot = @robot
    payload = { pullrequest_created: { id: 42, title: 'PR title', author: { username: 'blue' } } }
    request(app).post('/bitbucket-pullrequest?room=%23hubot').send(payload).end (e, r) ->
      assert.ok(robot.messageRoom.calledWith('#hubot', 'New pull request #42 (PR title) by @blue'))
      done()
