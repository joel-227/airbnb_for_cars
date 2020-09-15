class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.float :price
      t.string :model
      t.string :license
      t.integer :age
      t.boolean :available

      t.timestamps
    end
  end
end
