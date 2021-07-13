class UserProjectsController < ApplicationController

    def index
        @user_projects = UserProject.all
    end

    def show
        @user_project = UserProject.find_by(id: params[:id])
    end

end
