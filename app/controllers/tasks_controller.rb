class TasksController < ApplicationController

before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @task = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_parameters)
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_parameters)
    redirect_to :root
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_parameters
    params.require(:task).permit(:name,:content,:done)
  end
end
