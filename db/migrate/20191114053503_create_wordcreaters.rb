class CreateWordcreaters < ActiveRecord::Migration[5.2]
  def change
    create_table :wordcreaters do |t|
      t.string   :name
      t.timestamps
    end
  end
end
