class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def show
  end

  def list
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    # get data from params
    # create a new object with data
    @task = Task.new(task_params)
    # save it
    @task.save
    # redirect to SHOW page
    redirect_to task_path(@task)
  end

  def edit
    # get the id from the params
    # find the restaurant with that id
  end

  def update
    # find restaurant by its id
    # update it with data from params
    # redirect to show page.
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    # find the restaurant with the given id
    # delete it!
    # redirect to index
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
