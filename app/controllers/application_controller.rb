class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_current_assistant

  def set_current_assistant
    @current_assistant = Assistant.find_by(id: session[:assistant_id])
  end

  def authenticate_assistant
    if @current_assistant == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
    end
  end

  def forbid_login_assistant
    if @current_assistant
      flash[:notice] = "すでにログインしています"
      redirect_to("/tasks/index")
    end
  end
  protect_from_forgery with: :exception
end
