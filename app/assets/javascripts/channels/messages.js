App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    return $('#interactive-board').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    return '<div class=\'something\'>' + data.user.username + ': ' + data.message + '</div>';
  }
});
