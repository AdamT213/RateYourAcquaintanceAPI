class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location
end
