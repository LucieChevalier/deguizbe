class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def show
    @costume = Costume.find(params[:id])

  def index
    @costumes = Costume.all

  end
end
