class DropAdminsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :admins do |t|
    t.string :email
    t.string :password_digest
  end
end
end