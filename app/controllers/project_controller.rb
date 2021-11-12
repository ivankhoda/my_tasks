class ProjectController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    projects = Project.all
    render json: ProjectSerializer.new(projects).serializable_hash
  end

  def show
    project = Project.find_by(id: params[:id])
    render json: ProjectSerializer.new(project).serializable_hash
  end

  def create
    project = Project.new(project_params)
    if project.save
      render json: ProjectSerializer.new(project).serializable_hash
    else
      render json: { error: project.errors.message }
    end
  end

  def project_params
    params.require(:project).permit(:title)
  end
end
