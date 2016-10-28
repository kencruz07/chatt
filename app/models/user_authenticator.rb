class UserAuthenticator

  def initialize username
    @user = User.where(:username => username).first
  end

  def authenticate unencrypted_password
    return false if @user.nil?

    @user.authenticate(unencrypted_password) ? @user : false
  end

end
