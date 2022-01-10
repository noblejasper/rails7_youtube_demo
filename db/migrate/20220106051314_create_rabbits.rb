class CreateRabbits < ActiveRecord::Migration[7.0]
  def change
    create_table :rabbits do |t|
      t.string :name
      t.date :birthday
      t.text :description

      t.timestamps
    end
  end
end
