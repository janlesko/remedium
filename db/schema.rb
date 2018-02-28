# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180228102116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "back_wallets", force: :cascade do |t|
    t.float "balance"
    t.string "address"
    t.bigint "front_wallet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["front_wallet_id"], name: "index_back_wallets_on_front_wallet_id"
  end

  create_table "charities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "video"
    t.string "email"
    t.string "website"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_charities_on_user_id"
  end

  create_table "front_wallets", force: :cascade do |t|
    t.float "balance"
    t.string "address"
    t.bigint "charity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_front_wallets_on_charity_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "sender_adress"
    t.float "amount"
    t.bigint "charity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_transactions_on_charity_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "back_wallets", "front_wallets"
  add_foreign_key "charities", "users"
  add_foreign_key "front_wallets", "charities"
  add_foreign_key "transactions", "charities"
end
