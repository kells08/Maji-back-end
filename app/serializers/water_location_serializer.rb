class WaterLocationSerializer < ApplicationSerializer
  attributes :id, :geolocation, :pluscode, :city, :country, :details, :active, :hours, :image_url

end
