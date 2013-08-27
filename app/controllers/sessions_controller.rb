class SessionsController < ApplicationController
  def login
  end

  def create
    if params[:login][:email].present? &&
        params[:login][:password].present?
      @user = User.find_by_email(params[:login][:email])

      if @user.nil?
        redirect_to :login, notice: "Invalid Username or Password"
      else
        if @user.authenticate(params[:login][:password])
          session[:user_id] = @user.id
          redirect_to root_path, notice: "Logged in successfully"
        else
          redirect_to :login, notice: "Invalid Username or Password"
        end
      end
    else
      redirect_to :login, notice: "Invalid Username or Password"
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: "You've been logged out."
  end
end
