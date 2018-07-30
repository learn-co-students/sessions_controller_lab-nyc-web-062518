class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if !session[:name]
      redirect_to '/login'
    elsif session[:name] == ""
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    if session[:name].present?
      session.delete :name
      redirect_to '/'
    else
      redirect_to '/'
    end
  end
end

# session.keys:
# ["session_id", "_csrf_token", "name"]
