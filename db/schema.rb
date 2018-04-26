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

ActiveRecord::Schema.define(version: 20180426162947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.string "preference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "runner_id"
    t.index ["runner_id"], name: "index_preferences_on_runner_id"
  end

  create_table "runner_prefs", force: :cascade do |t|
    t.bigint "preference_id"
    t.bigint "runner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["preference_id"], name: "index_runner_prefs_on_preference_id"
    t.index ["runner_id"], name: "index_runner_prefs_on_runner_id"
  end

  create_table "runners", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.boolean "active"
    t.date "last_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "trainer_id"
    t.bigint "area_id"
    t.string "email"
    t.date "last_email"
    t.index ["area_id"], name: "index_runners_on_area_id"
    t.index ["trainer_id"], name: "index_runners_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "area_id"
    t.index ["area_id"], name: "index_trainers_on_area_id"
  end

  add_foreign_key "preferences", "runners"
  add_foreign_key "runner_prefs", "preferences"
  add_foreign_key "runner_prefs", "runners"
  add_foreign_key "runners", "areas"
  add_foreign_key "runners", "trainers"
  add_foreign_key "trainers", "areas"
end
