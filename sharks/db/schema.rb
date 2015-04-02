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

ActiveRecord::Schema.define(version: 20150330145002) do

  create_table "sharks", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "tags", force: true do |t|
    t.integer  "number"
    t.decimal  "lat",        precision: 15, scale: 3
    t.decimal  "lng",        precision: 15, scale: 3
    t.integer  "shark_id"
    t.integer  "angler_id"
    t.text     "comments"
    t.boolean  "five_miles"
    t.datetime "date"
    t.integer  "tagger_id"
    t.string   "method"
    t.string   "condition"
    t.integer  "length"
    t.integer  "weight"
    t.string   "species"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "recapture"
    t.string   "ns"
    t.decimal  "latdeg",     precision: 15, scale: 3
    t.decimal  "latmin",     precision: 15, scale: 3
    t.decimal  "latsec",     precision: 15, scale: 3
    t.string   "ew"
    t.decimal  "londeg",     precision: 15, scale: 3
    t.decimal  "lonmin",     precision: 15, scale: 3
    t.decimal  "lonsec",     precision: 15, scale: 3
    t.string   "sex"
  end

  create_table "trackings", force: true do |t|
    t.integer  "shark_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "tagger"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
