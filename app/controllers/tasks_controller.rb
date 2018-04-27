class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def show
    @tasks = Task.find(params[:id])
  end
  
  def new
    @tasks = Task.new
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
end
