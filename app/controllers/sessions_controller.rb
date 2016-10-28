class SessionsController < ApplicationController

  skip_before_action :redirect_to_login_path,
    :only => :destroy,
    :if => :signed_out?

  before_action :redirect_to_root_path,
    :except => :destroy,
    :if => :signed_in?



  def edit; end

  def update
    user = UserAuthenticator.new(params[:login]).authenticate params[:password]

    if user
      session[:user_id] = user.id
      redirect_to :root
    else
      render :edit
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to [:login]
  end

end
