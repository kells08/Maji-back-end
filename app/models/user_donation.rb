class UserDonation < ApplicationRecord
  belongs_to :user 
  belongs_to :donation
end
