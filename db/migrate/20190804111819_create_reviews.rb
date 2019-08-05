class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string  :reviewer_name
      t.integer :rating
      t.string  :title
      t.text    :description
      t.integer :book_id
      t.timestamps
    end
  end
end
