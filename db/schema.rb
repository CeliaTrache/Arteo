# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_19_095632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_pieces", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "unit_price"
    t.string "artist"
    t.string "category"
    t.string "painting_technic"
    t.string "size"
    t.string "picture"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_art_pieces_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.date "start_time"
    t.date "end_time"
    t.integer "price"
    t.bigint "art_piece_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["art_piece_id"], name: "index_bookings_on_art_piece_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "art_pieces", "users"
  add_foreign_key "bookings", "art_pieces"
  add_foreign_key "bookings", "users"
end
