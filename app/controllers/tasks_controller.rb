class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
  @task = Task.new(
    content: params[:content],
    compensation: params[:compensation],
    viewing_period: params[:viewing_period]
  )
    if @task.save
      redirect_to("/tasks/up")
    else
      render("tasks/new")
    end
  end

  def up

  end

end
