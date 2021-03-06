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

ActiveRecord::Schema.define(version: 20180124025211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_units", force: :cascade do |t|
    t.bigint "address_id"
    t.bigint "unit_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_address_units_on_address_id"
    t.index ["unit_id"], name: "index_address_units_on_unit_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "street"
    t.string "city"
    t.integer "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.integer "cleaning_time"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "address_units", "units"
end
