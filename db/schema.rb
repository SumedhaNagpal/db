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

ActiveRecord::Schema.define(version: 20171010110500) do

  create_table "doctors", force: :cascade do |t|
    t.string   "doctor_name"
    t.string   "doctor_image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "immunizations", force: :cascade do |t|
    t.string   "vaccine"
    t.integer  "dose_one"
    t.integer  "dose_two"
    t.integer  "dose_three"
    t.integer  "dose_four"
    t.integer  "dose_five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "required_stocks", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "immunization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "required_stocks", ["doctor_id"], name: "index_required_stocks_on_doctor_id"
  add_index "required_stocks", ["immunization_id"], name: "index_required_stocks_on_immunization_id"

  create_table "users", force: :cascade do |t|
    t.string   "aadhaar_no"
    t.string   "child_name"
    t.string   "father_name"
    t.string   "mother_name"
    t.date     "dob"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "father_image"
    t.string   "mother_image"
  end

  create_table "vaccine_mappings", force: :cascade do |t|
    t.integer  "immunization_id"
    t.integer  "user_id"
    t.integer  "doctor_id"
    t.integer  "dose"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "vaccine_mappings", ["doctor_id"], name: "index_vaccine_mappings_on_doctor_id"
  add_index "vaccine_mappings", ["immunization_id"], name: "index_vaccine_mappings_on_immunization_id"
  add_index "vaccine_mappings", ["user_id"], name: "index_vaccine_mappings_on_user_id"

end
