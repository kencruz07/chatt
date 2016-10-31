class KeypressesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'keypresses'
  end
end
