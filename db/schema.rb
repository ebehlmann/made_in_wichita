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

ActiveRecord::Schema.define(version: 20150222210051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: true do |t|
    t.integer  "product_id"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price",              precision: 19, scale: 2
    t.integer  "category_id"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: true do |t|
    t.string  "name"
    t.string  "description"
    t.string  "owner"
    t.string  "location"
    t.string  "website"
    t.string  "phone"
    t.string  "facebook"
    t.string  "twitter"
    t.boolean "open_monday"
    t.boolean "open_tuesday"
    t.boolean "open_wednesday"
    t.boolean "open_thursday"
    t.boolean "open_friday"
    t.boolean "open_saturday"
    t.boolean "open_sunday"
    t.time    "weekday_opening_time"
    t.time    "weekday_closing_time"
    t.time    "saturday_opening_time"
    t.time    "saturday_closing_time"
    t.time    "sunday_opening_time"
    t.time    "sunday_closing_time"
  end

end
