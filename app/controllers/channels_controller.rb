class ChannelsController < ApplicationController

  def index
    @channels = Channel.all
    @channel = Channel.first
    @message = Message.new
  end

end
