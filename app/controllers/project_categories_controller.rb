class ProjectCategoriesController < ApplicationController
  def index
    @project_categories = ProjectCategory.all
  end

  def show
    @project_category = ProjectCategory.find_by(id: params[:id])
  end
end
