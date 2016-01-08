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
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:notice] = "Your account was created successfully."
  		redirect_to @user
  	else
  		flash[:notice] = "There was a problem saving your account."
  		redirect_to new_user_path
  	end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])

  	if @user.update(params[:user])
  		flash[:notice] = "User has been updated"
  		redirect_to @user
  	else
  		flash[:alert] = "User has not been updated"
  		redirect_to edit_user_path
  	end
  end

  def destroy
  	@user = User.find(params[:id])
  	if @user.destroy
  		flash[:notice] = "Success"
  	else
  		flash[:alert] = "Problemo"
  	end
		redirect_to users_path
  end
end
