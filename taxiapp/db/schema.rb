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

ActiveRecord::Schema.define(version: 20160210181237) do

  create_table "customers", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "name",            limit: 255
    t.string   "phone",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "name",            limit: 255
    t.string   "phone",           limit: 255
    t.string   "nroIdentidad",    limit: 255
    t.string   "nroPlaca",        limit: 255
    t.string   "colorAuto",       limit: 255
    t.string   "marcaAuto",       limit: 255
    t.string   "modeloAuto",      limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "mobility_id",     limit: 4
  end

  add_index "drivers", ["mobility_id"], name: "index_drivers_on_mobility_id", using: :btree

  create_table "mobilities", force: :cascade do |t|
    t.string   "descripcion", limit: 255
    t.integer  "maxAsiento",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "paymentmethods", force: :cascade do |t|
    t.string   "descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "rates", force: :cascade do |t|
    t.string   "origenRuta",  limit: 255
    t.string   "destinoRuta", limit: 255
    t.float    "precio",      limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "feedback",         limit: 255
    t.integer  "driver_id",        limit: 4
    t.integer  "customer_id",      limit: 4
    t.integer  "paymentmethod_id", limit: 4
    t.integer  "status_id",        limit: 4
    t.integer  "rate_id",          limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "reservations", ["customer_id"], name: "index_reservations_on_customer_id", using: :btree
  add_index "reservations", ["driver_id"], name: "index_reservations_on_driver_id", using: :btree
  add_index "reservations", ["paymentmethod_id"], name: "index_reservations_on_paymentmethod_id", using: :btree
  add_index "reservations", ["rate_id"], name: "index_reservations_on_rate_id", using: :btree
  add_index "reservations", ["status_id"], name: "index_reservations_on_status_id", using: :btree

  create_table "status", force: :cascade do |t|
    t.string   "descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "drivers", "mobilities"
  add_foreign_key "reservations", "customers"
  add_foreign_key "reservations", "drivers"
  add_foreign_key "reservations", "paymentmethods"
end
