class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def show
    @costume = Costume.find(params[:id])
  end

  def index
    @costumes = Costume.all
  end
end
