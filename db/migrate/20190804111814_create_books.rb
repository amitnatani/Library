class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string  :name
      t.string  :short_description
      t.text    :long_description
      t.date    :publication_date
      t.string  :genre
      t.integer :author_id
      t.timestamps
    end
  end
end
