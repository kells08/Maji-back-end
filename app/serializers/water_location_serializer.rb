class WaterLocationSerializer < ActiveModel::Serializer
  attributes :id, :geolocation, :pluscode, :city, :country, :details, :active, :hours
end
