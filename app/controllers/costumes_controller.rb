class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def show
    @costume = Costume.find(params[:id])
    @reservation = Reservation.new
  end

  def index
    @costumes = Costume.all
  end
end
