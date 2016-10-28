class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    @chatroom = Chatroom.find_by_name '#general'
    @message = Message.new
  end

end
