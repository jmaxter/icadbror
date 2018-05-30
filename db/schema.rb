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

ActiveRecord::Schema.define(version: 20180529210334) do

  create_table "customers", force: :cascade do |t|
    t.string   "custno"
    t.string   "custname"
    t.text     "address"
    t.string   "internal"
    t.string   "contact"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "empno"
    t.string   "empname"
    t.string   "department"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventplanlines", force: :cascade do |t|
    t.string   "planno"
    t.integer  "lineno"
    t.time     "timestart"
    t.time     "timeend"
    t.integer  "numberfld"
    t.string   "locno"
    t.string   "resno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventplans", force: :cascade do |t|
    t.string   "planno"
    t.string   "eventno"
    t.date     "workdate"
    t.text     "notes"
    t.string   "activity"
    t.string   "empno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventrequests", force: :cascade do |t|
    t.string   "eventno"
    t.date     "dateheld"
    t.date     "datereq"
    t.string   "custno"
    t.string   "facno"
    t.date     "dateauth"
    t.string   "status"
    t.decimal  "estcost"
    t.integer  "estaudience"
    t.string   "budno"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string   "facno"
    t.string   "facname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "locno"
    t.string   "locname"
    t.integer  "facility_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "facno"
  end

  add_index "locations", ["facility_id"], name: "index_locations_on_facility_id"
  add_index "locations", ["facno"], name: "index_locations_on_facno"

  create_table "resources", force: :cascade do |t|
    t.string   "resno"
    t.string   "resname"
    t.float    "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
