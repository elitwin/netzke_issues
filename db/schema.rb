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

ActiveRecord::Schema.define(version: 20150224221907) do

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  add_index "categories", ["name"], name: "index_categories_on_name", unique: true

  create_table "estimates", force: :cascade do |t|
    t.integer "hours", null: false
  end

  add_index "estimates", ["hours"], name: "index_estimates_on_hours", unique: true

  create_table "tasks", force: :cascade do |t|
    t.boolean  "done",                                null: false
    t.string   "name",                                null: false
    t.text     "notes"
    t.integer  "priority",                            null: false
    t.date     "due",                                 null: false
    t.float    "score",                               null: false
    t.decimal  "rate",        precision: 7, scale: 4, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "category_id"
    t.integer  "estimate_id"
  end

end
