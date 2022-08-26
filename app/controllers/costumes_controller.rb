class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def show
    @costume = Costume.find(params[:id])
    @reservation = Reservation.new
  end

  def index
    if user_signed_in?
      @costumes = Costume.all.select { |costume|  costume.owner_id != current_user.id  }
    else
      @costumes = Costume.all
    end
  end
end
