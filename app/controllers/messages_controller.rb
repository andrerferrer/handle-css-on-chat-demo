class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find params[:chatroom_id]
    @user = current_user
    @message = Message.new(strong_params)
    @message.user = @user
    @message.chatroom = @chatroom

    if @message.save
      # redirect_to chatroom_path(@chatroom)
      broadcast(@chatroom, @message)
    else
      render 'chatrooms/show'
    end
  end

  private

  def strong_params
    params.require(:message).permit(:content)
  end

  def broadcast(chatroom, message)
    ChatroomChannel.broadcast_to(
      chatroom,
      render_to_string(partial: "message", locals: { message: message })
    )
  end
end
