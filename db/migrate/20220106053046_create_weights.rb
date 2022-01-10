class CreateWeights < ActiveRecord::Migration[7.0]
  def change
    create_table :weights do |t|
      t.references :rabbit, null: false, foreign_key: true
      t.integer :gram
      t.string :note

      t.timestamps
    end
  end
end
