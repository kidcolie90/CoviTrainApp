class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :summary
      t.text :body
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
##modified the boolean value to of create posts to be true, in this way the post will always be visible unless the user sets to fales/hide