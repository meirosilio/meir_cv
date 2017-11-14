class UsersController < ApplicationController
  def show
    @experiences = Experience.all
    @user = User.find(params[:id])
  end
end
