class SessionsController < ApplicationController
  def new
  end

  def create
    # @user = User.find_by(name: params[:sessions][:username])
    @user = User.ci_find("name" , params[:sessions][:username])  #ci_find defined in model/user.rb via scope // lets us do a case insesitive find_by
    if @user && @user.authenticate(params[:sessions][:password])
      session[:user_id] = @user.id
      if params[:sessions][:remember_me] == '1'
        @user.remember
        cookies.permanent.signed[:user_id] = @user.id
        cookies.permanent[:remember_token] = @user.remember_token
      end
      redirect_to @user
    else
      flash.now[:danger] = "Invalid Username password combination"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
    # @current_user = nil
    redirect_to root_url
  end
end
