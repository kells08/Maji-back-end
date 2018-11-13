class Donation < ApplicationRecord
  has_many :user_donations
  has_many :users, through: :user_donations
end
