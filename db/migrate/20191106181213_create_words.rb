class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.text        :word
      t.integer     :user_id, null:false
      t.integer     :person_id, null:false
      t.integer     :genre_id, null:false
      t.timestamps null: true
    end
  end
end
