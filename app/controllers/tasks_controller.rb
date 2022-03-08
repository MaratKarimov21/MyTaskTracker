class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_task, only: %i[show]

  def index
    @tasks = Task.all
  end

  def show
  end

  private

  def fetch_task
    @task = Task.find_by!(id: params[:id])
  end
end
