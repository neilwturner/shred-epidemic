class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
