class ChatroomController < ApplicationController
  before_action :require_login

  def index
    @messages = Message.latest_messages
    @message = Message.new
  end
end
