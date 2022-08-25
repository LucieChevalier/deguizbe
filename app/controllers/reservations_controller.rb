class ReservationsController < ApplicationController
  def new
    @costume = Costume.find(params[:costume_id])
    @reservation = Reservation.new
  end

  def create
    # Initialisation du costume et de la reservation
    @costume = Costume.find(params[:costume_id])
    @reservation = Reservation.new(reservation_params)

    # Mise à jour du current_user et des colonnes manquantes de la réservation
    current_user.update(address: reservation_params[:address]) if current_user.address.nil?
    @reservation.costume = @costume
    @reservation.total_amount = ((@reservation.end_date - @reservation.start_date + 1) * @costume.price_per_day).to_i
    @reservation.renter = current_user
    @reservation.status = "Pending"

    # Redirection vers la page des réservations du renter
    if @reservation.save
      redirect_to costume_reservation_path(@costume, @reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @costume = Costume.find(params[:costume_id])
    @reservation = Reservation.find(params[:id])
    @current_user = current_user
  end

  private

  def reservation_params
    params.require(:reservation).permit(:comment, :start_date, :end_date, :address)
  end
end
