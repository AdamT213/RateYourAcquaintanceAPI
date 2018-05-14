class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :star_rating, :description, :user_id, :person_id 
  belongs_to :person 
  belongs_to :user
end
