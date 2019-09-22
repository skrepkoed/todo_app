class RemoveTitleFromTodolists < ActiveRecord::Migration[5.2]
  def change
    remove_column :todolists, :title, :text
	add_column :todolists, :title, :string
  end
end
