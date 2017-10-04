class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :address
  has_many :quests
end
