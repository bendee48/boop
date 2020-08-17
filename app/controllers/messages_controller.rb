class MessagesController < ApplicationController
  before_action :require_login

  def create
    @message = current_user.messages.build(message_params)

    if @message.save
      ActionCable.server.broadcast "chatroom_channel",
                                    message: render_message(@message)
    else
      flash.alert = @message.errors.full_messages.join(',')
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def render_message(message)
    render partial: 'message', locals: {message: message}
  end
end
