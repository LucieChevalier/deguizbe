class Reservation < ApplicationRecord
  attr_accessor :address

  belongs_to :costume
  belongs_to :renter, class_name: "User"

  validates :status, inclusion: { in: %w[Accepted Pending Declined] }
end
