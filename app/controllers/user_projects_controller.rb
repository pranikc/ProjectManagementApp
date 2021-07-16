class UserProjectsController < ApplicationController

    def index
        @user_projects = UserProject.all
    end

    def new
        @user_project = UserProject.new
        @users = User.all
        @project_categories = ProjectCategory.all
        @project = @user_project.build_project
    end

    def create
        @user_project = UserProject.create(user_project_params)
        if @user_project.valid?
          redirect_to project_path(@user_project.project_id)
      else
          flash[:errors] = @user_project.errors.full_messages
          redirect_to new_user_project_path
      end

    end

    def show
        @user_project = UserProject.find_by(id: params[:id])

    end

    private

    def user_project_params
        params.require(:user_project).permit(:user_id, :project_category_id, :song_file, project_attributes: [:id, :name, :description, :likes, :views, :plays])
    end

end
