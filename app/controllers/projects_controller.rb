class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]

  def index
    @projects = Project.all
    @featured_projects = Project.where(featured: true)
    @categories = Project.distinct.pluck(:category).compact
  end

  def show
    @related_projects = Project.where(category: @project.category).where.not(id: @project.id).limit(3)
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
