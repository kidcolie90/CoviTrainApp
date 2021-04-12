class AddTotalLogToCatagories < ActiveRecord::Migration[6.1]
  def change
    add_column :catagories, :total_log, :integer, default: 0
  end
end
