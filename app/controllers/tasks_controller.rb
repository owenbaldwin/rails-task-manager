class TasksController < ApplicationController
  before_action :find_task, only: [:show]
  def index
    @tasks = Task.all
  end

  def show

  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
