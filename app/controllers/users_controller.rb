class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @user_projects = UserProject.all
  end

  def like
    @user = user.find(params[:user_id])
    @user.likes += 1
    @user.save

    redirect_to user_path(@user)
  end

  def view
    @user = user.find(params[:user_id])
    @user.views += 1
    @user.save

    redirect_to user_path(@user)
  end


end
