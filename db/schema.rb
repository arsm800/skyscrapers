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

ActiveRecord::Schema.define(version: 20160713193007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.string "country"
    t.string "slug"
  end

  create_table "skyscrapers", force: :cascade do |t|
    t.integer "rank"
    t.string  "name"
    t.string  "city_name"
    t.string  "country"
    t.integer "heightM"
    t.integer "heightF"
    t.integer "floors"
    t.integer "completedYr"
    t.string  "materials"
    t.string  "use"
    t.integer "city_id"
  end

  add_index "skyscrapers", ["city_id"], name: "index_skyscrapers_on_city_id", using: :btree

  add_foreign_key "skyscrapers", "cities"
end
