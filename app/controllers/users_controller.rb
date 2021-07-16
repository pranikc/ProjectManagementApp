class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to user_path(@user)
  else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
  end
end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])

    if @user.update(:first_name=> params[:user][:first_name], :last_name=> params[:user][:last_name], :age=> params[:user][:age])
      redirect_to user_path(@user)
    else
      render 'edit'
    end
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

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :likes, :views, :plays)
  end
end
