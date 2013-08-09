class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_signin!
    if !defined? current_user
      flash[:alert] = "You must sign in first."
      redirect_to :signin
    end
  end
end
