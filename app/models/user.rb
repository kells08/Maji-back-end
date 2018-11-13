class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  has_many :user_locations
  has_many :water_locations, through: :user_locations
  has_many :user_donations
  has_many :donations, through: :user_donations
  has_many :cart_items
  has_many :items, through: :cart_items
end
