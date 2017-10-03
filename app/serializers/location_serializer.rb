class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude
  has_many :quests
end
