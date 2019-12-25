class RemoveIntegerFromWordcreaters < ActiveRecord::Migration[5.2]
  def change
    remove_column :wordcreaters, :integer, :string
  end
end
