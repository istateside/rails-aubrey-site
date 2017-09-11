class Api::ProjectsController < ApiController
  def show
    id = params[:id]
    render json: Project.find(id)
  end

  def index
    render json: Project.all
  end

  def create
    project = Project.new(params[:project])
    project.save!
    render json: project
  end

  def update
    id = params[:id]
    project = Project.find(id)
    project.update(params[:project])
    render json: project
  end

  def destroy
    id = params[:id]
    project = Project.find(id)
    project.destroy!
    render json: nil
  end
end 

