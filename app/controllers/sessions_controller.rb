class SessionsController < ApplicationController
  def new
     
  end

  def create
    user = User.authenticate(params[:email], params[:password] )
    if   user.present?
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
      @notice_loggedin=params[:notice]
    else
      redirect_to login_url, notice: "Senha incorreta"
      #render action:new
      #flash.now[:notice] = "Email or password is invalid"

    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
