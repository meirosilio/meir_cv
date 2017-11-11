class StaticPagesController < ApplicationController

  def index
    @experiences = Experience.all
    @users = User.all
    @skilles = Skill.all
  end
end

