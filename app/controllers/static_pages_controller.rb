class StaticPagesController < ApplicationController

  def index
    @experiences = Experience.all
  end
end

