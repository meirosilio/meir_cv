class ExperiencesController< ApplicationController

  before_action :set_experience, only:[:edit, :update, :destroy]


  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.create(experience_params)
    respond_to do |format|
      if @experience.save
        format.json{head :no_content}
        format.js
      else
        format.json {render json:@experience.errors.full_messages, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.json{head :no_content}
        format.js
      else
        format.json{render json: @experience.errors.full_messages, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @experience.destroy
    redirect_to experiences_path, notice: "WOW"
  end


  private
  def set_experience
    @experience = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:name)
  end

end
