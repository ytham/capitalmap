class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      session[:user] = @user.id
      redirect_to @user
    else
      redirect_to root_url, notce: "Errors detected."
    end
  end

  def save_password
    @user = User.find()
  end
end