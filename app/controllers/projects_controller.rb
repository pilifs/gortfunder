class ProjectsController < ApplicationController

  def new
    @project = Project.new
    @project.rewards.build
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :goal, :start_date, :end_date,
                                    rewards_attributes: [:title, :description, :amount, :_destroy] )
  end

end
