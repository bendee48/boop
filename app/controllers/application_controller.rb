class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :require_login

  def current_user
    @current_user ||= User.find(session[:current_user_id]) if session[:current_user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_login
    unless logged_in?
      flash.error = "You must be logged in to access that page."
      redirect_to login_path
    end
  end
end
