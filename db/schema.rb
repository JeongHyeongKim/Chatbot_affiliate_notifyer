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

ActiveRecord::Schema.define(version: 20181123172428) do

  create_table "agricultures", force: :cascade do |t|
    t.string   "name"
    t.string   "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alerts", force: :cascade do |t|
    t.string   "title"
    t.string   "context"
    t.string   "class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "electronics", force: :cascade do |t|
    t.string   "name"
    t.string   "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engineerings", force: :cascade do |t|
    t.string   "name"
    t.string   "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "humanities", force: :cascade do |t|
    t.string   "name"
    t.string   "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lifesciences", force: :cascade do |t|
    t.string   "name"
    t.string   "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicals", force: :cascade do |t|
    t.string   "name"
    t.string   "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "natruals", force: :cascade do |t|
    t.string   "name"
    t.string   "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "socials", force: :cascade do |t|
    t.string   "name"
    t.string   "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
