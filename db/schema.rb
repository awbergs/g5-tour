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

ActiveRecord::Schema.define(version: 20150619205900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "amenity_tour_requests", force: :cascade do |t|
    t.integer "amenity_id"
    t.integer "tour_request_id"
  end

  add_index "amenity_tour_requests", ["amenity_id"], name: "index_amenity_tour_requests_on_amenity_id", using: :btree
  add_index "amenity_tour_requests", ["tour_request_id"], name: "index_amenity_tour_requests_on_tour_request_id", using: :btree

  create_table "tour_requests", force: :cascade do |t|
    t.string   "email",               null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.datetime "requested_tour_date"
    t.string   "questions"
    t.string   "ip_address"
    t.integer  "rating"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_foreign_key "amenity_tour_requests", "amenities"
  add_foreign_key "amenity_tour_requests", "tour_requests"
end
