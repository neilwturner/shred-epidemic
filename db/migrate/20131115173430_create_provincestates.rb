class CreateProvincestates < ActiveRecord::Migration
  def change
    create_table :provincestates do |t|
      t.integer :id
      t.string :name
      t.decimal :pst
      t.decimal :gst
      t.decimal :hst

      t.timestamps
    end
  end
end
