class AddCatagoryIdToPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :catagory,  foreign_key: true #removed not null option from migration to run migration without removing current posts
  end
end
