module Owner
  class ReservationsController < ApplicationController
    def index
      # Logique owner
      @owner = current_user
      @owner_reservations = @owner.owner_reservations


      # Logique renter
      @reservations = Reservation.where(renter_id: current_user)
      @reservations_pending = @reservations.where(status: "Pending")
      @reservations_accepted = @reservations.where(status: "Accepted")
      @reservations_declined = @reservations.where(status: "Declined")
    end

    # def new
    #   @owner_reservation = Reservation.new # not saved yet!
    # end

    # def create
    #   @owner_reservation = Reservation.new(reservation_params)
    #   @owner_reservations.save

    #   redirect_to owner_reservations_path
    # end

    def accept
      reservation = Reservation.find(params[:id])
      reservation.update(status: "Accepted")
      redirect_to owner_reservations_path
    end

    def decline
      reservation = Reservation.find(params[:id])
      reservation.update(status: "Declined")
      redirect_to owner_reservations_path
    end

  private

    def reservation_params
      params.require(:reservation).permit(:comment, :start_date, :end_date, :address, :costume_id)
    end
  end
end
