# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_12_180027) do

  create_table "accounts", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_na_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

# Could not dump table "catagories" because of following StandardError
#   Unknown type 'String' for column 'catagorie_id'

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "body"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "catagory_id"
    t.integer "category_id"
    t.integer "views", default: 0
    t.integer "account_id"
    t.index ["account_id"], name: "index_posts_on_account_id"
    t.index ["catagory_id"], name: "index_posts_on_catagory_id"
    t.index ["category_id"], name: "index_posts_on_category_id"
  end

  add_foreign_key "posts", "catagories"
  add_foreign_key "posts", "categories"
end
