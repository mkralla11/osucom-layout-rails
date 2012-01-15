class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user, :logged_in?
  
  def current_user
    
  end
  
  def logged_in?
    
  end
  
end
