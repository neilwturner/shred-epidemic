class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_zip
      t.string :email
      t.integer :province_state_id
      t.integer :points

      t.timestamps
    end
  end
end
