class Reservation < ApplicationRecord
  belongs_to :costume
  belongs_to :renter, class_name: "User"
end
