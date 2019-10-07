App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    console.log("Connected")

  disconnected: ->
    console.log("Disconnected")

  received: (data) ->
    $('#messages').append(data.message)

  speak: (msg) ->
    @perform 'speak', message: msg
