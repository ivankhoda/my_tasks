class TaskController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    tasks = Task.all
    render json: TaskSerializer.new(tasks).serializable_hash
  end

  def create
    task = Task.new(task_params)
    if task.save
      render json: TaskSerializer.new(task).serializable_hash
    else
      render json: { error: task.errors.message }
    end
  end

  def update
    task = Task.find_by(id: params[:id])
    if task.update(task_params)
      render json: TaskSerializer.new(task).serializable_hash
    else
      render json: { error: task.errors.messages }, status: 422
    end
  end

  def task_params
    params.require(:task).permit(:text, :isCompleted, :project_id)
  end
end
