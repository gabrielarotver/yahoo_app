class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      if user.admin == true
        redirect_to admin_index_path, notice: 'Logged in!'
      else
        redirect_to user_index_path, notice: 'Logged in!'
      end

      # redirect_to root_url, notice: 'Logged in!'
      # redirect based on admin or not!!!!!!!!!!
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
