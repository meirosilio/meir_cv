class ExperiencesController < ApplicationController

  def index
    experiences = Experience.all
    @user_experiences = current_user.experiences
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    if @experience.update!(experience_params)
      redirect_to experiences_path
    else
      redirect_to :edit
    end
  end

  private
  def experience_params
    params.require(:experience).permit(:name,:position,:start_date,:end_date,
                                       :description,:experience_category_id)
  end
end
