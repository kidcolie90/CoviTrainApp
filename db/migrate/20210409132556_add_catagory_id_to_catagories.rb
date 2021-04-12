class AddCatagoryIdToCatagories < ActiveRecord::Migration[6.1]
  def change
    add_column :Catagories, :catagory_id, :String
  end
end
