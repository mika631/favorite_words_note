class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.text         :word, null: false
      t.string       :image
      t.integer       :genre_id, null:false
      t.references   :wordcreater, foreign_key: true
      t.timestamps   null: true
    end
  end
end
