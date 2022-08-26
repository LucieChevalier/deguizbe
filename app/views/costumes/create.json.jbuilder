if @reservation.persisted?
  json.form render(partial: "reservations/form", formats: :html, locals: {costume: @costume, reservation: Reservation.new})
  json.inserted_item render(partial: "costumes/reservation", formats: :html, locals: {reservation: @reservation})
else
  json.form render(partial: "reservations/form", formats: :html, locals: {costume: @costume, reservation: @reservation})
end
