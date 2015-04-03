# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150403181748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ancestors", force: true do |t|
    t.string   "names"
    t.string   "last_names"
    t.integer  "user_id"
    t.integer  "sender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordinance_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordinances", force: true do |t|
    t.date     "performed_in"
    t.integer  "ancestor_id"
    t.integer  "ordinance_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ordinances", ["ancestor_id", "ordinance_type_id"], name: "index_ordinances_on_ancestor_id_and_ordinance_type_id", unique: true, using: :btree

  create_table "senders", force: true do |t|
    t.string   "names"
    t.string   "last_names"
    t.string   "phone"
    t.string   "nim"
    t.string   "lds_user"
    t.string   "lds_password"
    t.boolean  "adult"
    t.boolean  "young"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "senders", ["lds_user"], name: "index_senders_on_lds_user", unique: true, using: :btree
  add_index "senders", ["nim"], name: "index_senders_on_nim", unique: true, using: :btree
  add_index "senders", ["user_id"], name: "index_senders_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
