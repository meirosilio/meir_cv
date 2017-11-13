class JobsController < ApplicationController
  before_action :authenticate_user!
  def index
    @experiences = Experience.all
    @users = User.all
    @skilles = Skill.all
  end
end
