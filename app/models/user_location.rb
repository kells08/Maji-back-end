class UserLocation < ApplicationRecord
  belongs_to :user
  belongs_to :water_location
end
