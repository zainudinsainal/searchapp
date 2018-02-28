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

ActiveRecord::Schema.define(version: 20180228085448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string "name", null: false
    t.integer "office_number", null: false
    t.integer "fax_number"
    t.string "address", null: false
    t.string "email"
    t.string "website"
    t.string "opening_hours"
    t.integer "category", default: 0
    t.text "criteria"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blocks", force: :cascade do |t|
    t.bigint "agency_id"
    t.integer "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agency_id"], name: "index_blocks_on_agency_id"
  end

  add_foreign_key "blocks", "agencies"
end
