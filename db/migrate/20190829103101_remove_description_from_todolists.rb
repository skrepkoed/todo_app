class RemoveDescriptionFromTodolists < ActiveRecord::Migration[5.2]
  def change
    remove_column :todolists, :description, :text
	add_column :todolists, :description, :string
  end
end
