class Costume < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :reservations
  has_one_attached :photo
end

