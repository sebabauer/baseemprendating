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

ActiveRecord::Schema.define(version: 20180731214254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "first_names", force: :cascade do |t|
    t.string "last_name"
    t.string "maiden_name"
    t.string "formatted_name"
    t.string "phonetic_first_name"
    t.string "phonetic_last_name"
    t.string "formatted_phonetic_name"
    t.string "headline"
    t.string "location"
    t.integer "industry"
    t.string "current_share"
    t.integer "num_connections"
    t.boolean "num_connections_capped"
    t.text "sumary"
    t.string "specialties"
    t.string "positions"
    t.string "picture_url"
    t.string "picture_url_original"
    t.string "site_standard_profile_request"
    t.string "api_standard_profile_request"
    t.string "public_profile_url"
    t.string "email_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ideas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.string "stage"
    t.string "looking_for"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_ideas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "maiden_name"
    t.string "formatted_name"
    t.string "phonetic_first_name"
    t.string "phonetic_last_name"
    t.string "formatted_phonetic_name"
    t.string "headline"
    t.string "location"
    t.integer "industry"
    t.string "current_share"
    t.integer "num_connections"
    t.boolean "num_connections_capped"
    t.text "sumary"
    t.string "specialties"
    t.string "positions"
    t.string "picture_url"
    t.string "picture_url_original"
    t.string "site_standard_profile_request"
    t.string "api_standard_profile_request"
    t.string "public_profile_url"
    t.string "email_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ideas", "users"
end
