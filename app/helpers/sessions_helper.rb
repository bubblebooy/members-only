module SessionsHelper

  def current_user
    # puts @current_user.inspect
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif user_id = cookies.signed[:user_id]
      user = User.find_by(id: user_id)
      if (user && Digest::SHA1.hexdigest(cookies[:remember_token]) == user.remember_digest)
        @current_user = user
      end
    end
  end
end
