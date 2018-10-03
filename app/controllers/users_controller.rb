class AssistantsController < ApplicationController
  def new
    @assistant = Assistant.new
  end

  def login_form
  end

  def create
    @assistant = Assistant.new(
      name: params[:name],
      email: params[:email],
      image_name:"/Champions-League.jpg",
      password: params[:password]
     )
    if @assistant.save
      session[:user_id] = @assistant.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/tasks/index")
    else
      render("assistants/new")
    end
  end

  def login
    @assistant = Assistant.find_by(
      name: params[:name],
      password: params[:password]
    )
    if @assistant
      session[:user_id] = @assistant.id
      flash[:notice] = "ログイン完了しました"
      redirect_to("/tasks/index")
    else
      # @error_messageを定義してください
      @error_message = "名前またはパスワードが間違っています"

      # @emailと@passwordを定義してください
      @name = params[:name]
      @password = params[:password]
      render("assistants/login_form")
    end
  end

end
