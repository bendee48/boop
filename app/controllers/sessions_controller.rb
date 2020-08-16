class SessionsController < ApplicationController
  before_action :login_redirect, only: [:new, :create]
  
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      flash.notice = "Successfully logged in."
      redirect_to root_path
    else
      flash.now.alert = "You're login details were incorrect."
      render 'new'
    end
  end

  def destroy
    session[:current_user_id] = nil
    flash.notice = "Successfully logged out."
    redirect_to login_path
  end

  private

  def login_redirect
    if logged_in?
      flash.alert = "You are already logged in."
      redirect_to root_path
    end
  end
end
