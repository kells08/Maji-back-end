class WaterLocation < ApplicationRecord
  has_many :user_locations
  has_many :users, through: :user_locations
  has_one_attached :image
end
