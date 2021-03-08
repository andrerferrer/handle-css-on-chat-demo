class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_for Chatroom.find params[:id]
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
