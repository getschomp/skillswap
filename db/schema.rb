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

ActiveRecord::Schema.define(version: 20150119190616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id", using: :btree
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id", using: :btree

  create_table "had_skills", force: :cascade do |t|
    t.integer  "skill_id",        null: false
    t.integer  "user_id",         null: false
    t.string   "expertise_level"
    t.string   "experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "had_skills", ["skill_id", "user_id"], name: "index_had_skills_on_skill_id_and_user_id", unique: true, using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "body",            null: false
    t.integer  "user_id",         null: false
    t.integer  "conversation_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_suggestions", force: :cascade do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "category"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["name"], name: "index_skills_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",                            null: false
    t.string   "gender"
    t.text     "about_me"
    t.integer  "location_id"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "wanted_skills", force: :cascade do |t|
    t.integer  "skill_id",        null: false
    t.integer  "user_id",         null: false
    t.string   "current_level"
    t.string   "teachers_skill"
    t.string   "why_description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "wanted_skills", ["skill_id", "user_id"], name: "index_wanted_skills_on_skill_id_and_user_id", unique: true, using: :btree

end
