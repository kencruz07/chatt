App.messages = App.cable.subscriptions.create('KeypressesChannel', {
  received: function(data) {
    if ( $('#dashboard').data('current-user-id') !== data.user.id ) {
      $('.typing-indicator').text(data.user.username + ' is typing...');

      setTimeout(function(){
        $('.typing-indicator').text('');
      }, 2000);
    }


    return true;
  }
});
