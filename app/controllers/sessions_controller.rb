class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.where(email: params[:email]).first
  	
  end

  def destroy

  end
end
