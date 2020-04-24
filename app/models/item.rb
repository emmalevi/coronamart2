class Item < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  has_many :bookings
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :price, presence: true
  has_one_attached :photo
end
