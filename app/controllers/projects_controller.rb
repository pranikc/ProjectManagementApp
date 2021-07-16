class ProjectsController < ApplicationController

    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
        @project_categories = ProjectCategory.all
        @user_project = UserProject.new
    end

    def show
        @project = Project.find_by(id: params[:id])
        @user_projects = UserProject.all
        @project.views += 1
        @project.save
    end

    def create
        @project = Project.create(project_params)
        @user_project = UserProject.create(user_project_params)
        if @project.valid?
            @project.save
          redirect_to project_path(@project)
      else
          flash[:errors] = @project.errors.full_messages
          redirect_to new_project_path
      end
    end


    def like
        @project = Project.find(params[:project_id])
        @project.likes += 1
        @project.save

        redirect_to project_path(@project)
    end




    private

    def project_params
        params.require(:project).permit(:name, :description, :song_file, :likes, :views, :plays)
    end

    def user_project_params
        params.require(:user_project).permit(1000, :id, )
    end


end
