class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_task, only: %i[show]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      respond_to do |format|
        format.turbo_stream do
          flash[:success] = 'Success'
        end
      end
    else
      render :new, flash[:error] = @task.errors
    end

  end

  private

  def task_params
    params.require(:task).permit(:title, :description).merge(requester: current_user)
  end

  def fetch_task
    @task = Task.find_by!(id: params[:id])
  end
end
