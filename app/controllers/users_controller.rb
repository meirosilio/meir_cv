class UsersController < ApplicationController


  def show
    @experience_categories = ExperienceCategory.all
    @user = User.find(params[:id])
  end
end
