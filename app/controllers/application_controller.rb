class ApplicationController < ActionController::Base

  protect_from_forgery :with => :exception

  helper_method :current_user, :signed_in?, :signed_out?

  before_action :redirect_to_login_path, :if => :signed_out?


  def current_user
    @current_user ||= User.where(:id => session[:user_id]).first
  end

  def signed_in?
    !self.signed_out?
  end

  def signed_out?
    !self.current_user
  end

  def redirect_to_root_path options = {}
    redirect_to :root, options
  end

  def redirect_to_login_path options = {}
    redirect_to :login, options
  end

end
