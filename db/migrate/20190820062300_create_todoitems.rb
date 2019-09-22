class CreateTodoitems < ActiveRecord::Migration[5.2]
  def change
    create_table :todoitems do |t|
      t.text :description
      t.boolean :done
      t.references :todolist, foreign_key: true

      t.timestamps
    end
  end
end
