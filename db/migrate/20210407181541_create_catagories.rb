class CreateCatagories < ActiveRecord::Migration[6.1]
  def change
    create_table :catagories do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
