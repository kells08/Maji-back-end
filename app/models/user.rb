class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  has_many :user_locations
  has_many :water_locations, through: :user_locations
  has_many :purchases
  has_many :products, through: :purchases
end
