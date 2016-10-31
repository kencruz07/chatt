App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    $('.channel-thread').append(this.renderMessage(data));
    $('.channel-thread').scrollTop($('.channel-thread')[0].scrollHeight);
    $('.chat-box').val('');
    return true;
  },

  renderMessage: function(data) {
    return '<div class=\'message\'><div class=\'message-dp\'>' + data.user.username[1] + '</div><div class=\'message-content-container\'><div class=\'message-sender\'><div class=\'username\'>' + data.user.username.split('@')[1] + '</div><div class=\'ts\'>' + data.ts + '</div></div><div class=\'message-content\'>' + data.message + '</div></div></div>';
  }
});
