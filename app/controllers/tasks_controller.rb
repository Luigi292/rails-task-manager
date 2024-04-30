class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end


  def create
    @task = Restaurant.new(task_params)
    @task.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to task_path(@task)
  end


  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
