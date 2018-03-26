class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location 
  has_many :reviews
end
