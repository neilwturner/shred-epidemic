class FixColumnName < ActiveRecord::Migration
  def change 
  	rename_column :products, :category_id, :catigory_id
  end

  def up
  end

  def down
  end
end
