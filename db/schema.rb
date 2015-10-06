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

ActiveRecord::Schema.define(version: 20151006213030) do

  create_table "accounts", force: :cascade do |t|
    t.string   "account_type"
    t.decimal  "credit_limit", precision: 5, scale: 2
    t.integer  "bank_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "movements", force: :cascade do |t|
    t.decimal  "amount",      precision: 5, scale: 2
    t.datetime "mov_date"
    t.string   "mov_type"
    t.string   "description"
    t.integer  "account_id"
    t.integer  "category_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "parcialities", force: :cascade do |t|
    t.string   "description"
    t.integer  "with_interest"
    t.decimal  "total_amount",    precision: 5, scale: 2
    t.datetime "date_start"
    t.integer  "same_day_charge"
    t.datetime "last_payment"
    t.integer  "total_months"
    t.integer  "paid_months"
    t.integer  "account_id"
    t.string   "notes"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

end
