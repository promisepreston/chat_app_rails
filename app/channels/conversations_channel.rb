class ConversationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "conservations_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
