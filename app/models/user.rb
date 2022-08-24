class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reservations, foreign_key: :renter_id # renter

  has_many :costumes, foreign_key: :owner_id # owner
  has_many :owner_reservations, through: :costumes, source: :reservations # owner

  has_one_attached :photo
end
