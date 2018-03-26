class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :description
      t.integer :user_id
      t.integer :person_id

      t.timestamps
    end
  end
end
