class ExperienceCategoriesController< ApplicationController

  before_action :authenticate_user!
  before_action :set_experience_category, only:[:edit, :update, :destroy]


  def index
    @experience_categories =ExperienceCategory.all
  end

  def new
    @experience_category = ExperienceCategory.new
  end

  def create
    @experience_category = ExperienceCategory.create(experience_category_params)
    respond_to do |format|
      if @experience_category.save
        format.json{head :no_content}
        format.js
      else
        format.json {render json:@experience_category.errors.full_messages, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @experience_category.update(experience_category_params)
        format.json{head :no_content}
        format.js
      else
        format.json{render json: @experience_category.errors.full_messages, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @experience_category.destroy
    redirect_to experience_categories_path, notice: "WOW"
  end


  private
  def set_experience_category
    @experience_category = ExperienceCategory.find(params[:id])
  end

  def experience_category_params
    params.require(:experience_category).permit(:name)
  end

end
