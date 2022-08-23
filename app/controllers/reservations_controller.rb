class ReservationsController < ApplicationController
  def new
    @costume = Costume.find(params[:costume_id])
    @reservation = Reservation.new
  end

  def create
    @costume = Costume.find(params[:costume_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.costume = @costume
    @reservation.save
    redirect_to costume_reservations(@costume)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:comment, :start_date, :end_date)
  end
end

# t.text :comment
# t.string :status
# t.date :start_date
# t.date :end_date
# t.integer :total_amount
