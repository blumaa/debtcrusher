class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def showf
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.valid?
      @project.save
      redirect_to project_path(@project)
    else
      flash[:errors] = @project.errors.full_messages
      redirect_to new_project_path
    end
  end

  def edit

  end

  def update
    @project.update(project_params)

    if @project.valid?
      @project.save
      redirect_to project_path(@project)
    else
      flash[:errors] = @project.errors.full_messages
      redirect_to edit_project_path(@project)
    end

  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def find_project
    @project = Project.find_by(id:params[:id])
  end

  def project_params
    params.require(:project).permit([:name, :goal])
  end
end
