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

ActiveRecord::Schema.define(version: 20141119230809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plates", force: true do |t|
    t.string   "plate_state"
    t.string   "plate_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "plate_id"
    t.string   "agg_speeding"
    t.string   "agg_weaving"
    t.string   "agg_tailgating"
    t.string   "agg_cutting"
    t.string   "agg_light"
    t.string   "agg_rage"
    t.string   "agg_other"
    t.string   "ina_phone"
    t.string   "ina_braking"
    t.string   "ina_drifting"
    t.string   "ina_intersection"
    t.string   "ina_pedestrian"
    t.string   "ina_drunk"
    t.string   "ina_other"
    t.string   "ale_safe"
    t.string   "ale_courteous"
    t.string   "park_blocking"
    t.string   "park_illegal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "street"
    t.string   "city"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.integer  "plate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "vehicle_image_file_name"
    t.string   "vehicle_image_content_type"
    t.integer  "vehicle_image_file_size"
    t.datetime "vehicle_image_updated_at"
  end

end
