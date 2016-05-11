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

ActiveRecord::Schema.define(version: 20160511192711) do

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "corporatename",     limit: 255
    t.string   "juridicaldocument", limit: 255
    t.string   "extradocument",     limit: 255
    t.string   "email",             limit: 255
    t.integer  "country_id",        limit: 4
    t.integer  "state_id",          limit: 4
    t.integer  "city_id",           limit: 4
    t.string   "address",           limit: 255
    t.string   "postcode",          limit: 255
    t.string   "phone",             limit: 255
    t.text     "note",              limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "companies", ["city_id"], name: "index_companies_on_city_id", using: :btree
  add_index "companies", ["country_id"], name: "index_companies_on_country_id", using: :btree
  add_index "companies", ["state_id"], name: "index_companies_on_state_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "credits", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "debts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "document_id",     limit: 4
    t.string   "documentcontent", limit: 255
    t.string   "email",           limit: 255
    t.integer  "country_id",      limit: 4
    t.integer  "state_id",        limit: 4
    t.integer  "city_id",         limit: 4
    t.string   "address",         limit: 255
    t.string   "postalcode",      limit: 255
    t.string   "phone",           limit: 255
    t.date     "dayofbirth"
    t.text     "note",            limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "people", ["city_id"], name: "index_people_on_city_id", using: :btree
  add_index "people", ["country_id"], name: "index_people_on_country_id", using: :btree
  add_index "people", ["document_id"], name: "index_people_on_document_id", using: :btree
  add_index "people", ["state_id"], name: "index_people_on_state_id", using: :btree

  create_table "rates", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "rates_categories", force: :cascade do |t|
    t.decimal  "onepax",                      precision: 10
    t.decimal  "twopax",                      precision: 10
    t.decimal  "extra",                       precision: 10
    t.decimal  "onepaxsp",                    precision: 10
    t.decimal  "twopaxsp",                    precision: 10
    t.decimal  "extrasp",                     precision: 10
    t.integer  "rooms_category_id", limit: 4
    t.integer  "rate_id",           limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "rates_categories", ["rate_id"], name: "index_rates_categories_on_rate_id", using: :btree
  add_index "rates_categories", ["rooms_category_id"], name: "index_rates_categories_on_rooms_category_id", using: :btree

  create_table "rates_schedules", force: :cascade do |t|
    t.date     "from"
    t.date     "to"
    t.integer  "rate_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "rates_schedules", ["rate_id"], name: "index_rates_schedules_on_rate_id", using: :btree

  create_table "records", force: :cascade do |t|
    t.integer  "reservation_id", limit: 4
    t.integer  "debt_id",        limit: 4
    t.integer  "credit_id",      limit: 4
    t.decimal  "value",                      precision: 10
    t.datetime "date"
    t.string   "note",           limit: 255
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "company_id",  limit: 4
    t.integer  "person_id",   limit: 4
    t.datetime "in"
    t.datetime "out"
    t.datetime "inreal"
    t.datetime "outreal"
    t.text     "note",        limit: 65535
    t.decimal  "customvalue",               precision: 10
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "reservations", ["company_id"], name: "index_reservations_on_company_id", using: :btree
  add_index "reservations", ["person_id"], name: "index_reservations_on_person_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.text     "description",       limit: 65535
    t.integer  "maxpax",            limit: 4
    t.integer  "area",              limit: 4
    t.integer  "rooms_category_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "rooms", ["rooms_category_id"], name: "index_rooms_on_rooms_category_id", using: :btree

  create_table "rooms_categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "country_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id", using: :btree

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "color",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "cities", "states"
  add_foreign_key "companies", "cities"
  add_foreign_key "companies", "countries"
  add_foreign_key "companies", "states"
  add_foreign_key "people", "cities"
  add_foreign_key "people", "countries"
  add_foreign_key "people", "documents"
  add_foreign_key "people", "states"
  add_foreign_key "rates_categories", "rates"
  add_foreign_key "rates_categories", "rooms_categories"
  add_foreign_key "rates_schedules", "rates"
  add_foreign_key "reservations", "companies"
  add_foreign_key "reservations", "people"
  add_foreign_key "rooms", "rooms_categories"
  add_foreign_key "states", "countries"
end
