class ChatroomController < ApplicationController
  before_action :require_login

  def index
    @messages = Message.all
    @message = Message.new
  end
end
