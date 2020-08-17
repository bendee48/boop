class MessagesController < ApplicationController
  before_action :require_login

  def create
    @message = current_user.messages.build(message_params)

    if @message.save
      redirect_to root_path
    else
      flash.alert = @message.errors.full_messages.join(',')
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end