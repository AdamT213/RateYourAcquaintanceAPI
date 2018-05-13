class ChangeReviewStarRatingToFloat < ActiveRecord::Migration[5.1]
  def change 
    change_column :reviews, :star_rating, :float
  end
end
