class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :star_rating, :description, :user_id, :person_id
end
