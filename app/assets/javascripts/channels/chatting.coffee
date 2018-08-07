App.chatting = App.cable.subscriptions.create "ChattingChannel",
  connected: ->
# Called when the subscription is ready for use on the server

  disconnected: ->
# Called when the subscription has been terminated by the server

  received: (data) ->
    unless data.content.blank?
      $('#messages').append "
" + data.message_user.email + " : " + data.content + "
"
      $('#message_content').value ""
      $('#messages').scrollTop $('#messages')[0].scollHeight