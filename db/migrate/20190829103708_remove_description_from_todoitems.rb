class RemoveDescriptionFromTodoitems < ActiveRecord::Migration[5.2]
  def change
    remove_column :todoitems, :description, :text
	add_column :todoitems, :description, :string
  end
end
