class CreateTodolists < ActiveRecord::Migration[5.2]
  def change
    create_table :todolists do |t|
       
      t.text :title
       
      t.text :description
      
      t.text :location
      
      t.boolean :done
      t.text :date
      
      t.text :time
      t.text :color, default: "yellow"
      t.text :list

      t.timestamps
    end
  end
end
