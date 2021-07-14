class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @user_projects = UserProject.all
    @user.views += 1
    @user.save
  end

  def like
    @user = User.find(params[:user_id])
    @user.likes += 1
    @user.save

    redirect_to user_path(@user)
  end


end
