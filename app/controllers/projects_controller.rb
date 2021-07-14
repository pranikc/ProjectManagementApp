class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find_by(id: params[:id])
        @user_projects = UserProject.all
        @project.views += 1
        @project.save
    end

    def like
        @project = Project.find(params[:project_id])
        @project.likes += 1
        @project.save

        redirect_to project_path(@project)
    end

end
