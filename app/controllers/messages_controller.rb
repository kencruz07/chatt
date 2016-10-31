class MessagesController < ApplicationController

  def create
    message = Message.new message_params
    message.user = current_user

    if message.save
      ActionCable.server.broadcast 'messages',
        :message => message.content,
        :user => message.user,
        :ts => message.updated_at.in_time_zone('Asia/Manila').strftime('%I:%M %p'),
        :in_channel => message.channel.users.uniq.count
      head :ok
    else
      redirect_to channels_path
    end
  end

  def user_typing
    ActionCable.server.broadcast 'keypresses',
      :user => current_user
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:content, :channel_id)
  end

end
