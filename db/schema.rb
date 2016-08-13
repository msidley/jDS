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

ActiveRecord::Schema.define(version: 20160703035306) do

  create_table "survey_resposnes", force: :cascade do |t|
    t.text     "q1"
    t.text     "q2"
    t.text     "q3"
    t.text     "q4"
    t.text     "q5"
    t.text     "q6"
    t.text     "q7"
    t.text     "q8"
    t.text     "q9"
    t.text     "q10"
    t.text     "q11"
    t.integer  "q12"
    t.text     "A1a"
    t.text     "A2b"
    t.text     "A3g"
    t.text     "C1a"
    t.text     "C2a"
    t.text     "C3a"
    t.text     "C3b"
    t.text     "C3c"
    t.text     "C3d"
    t.text     "C3e"
    t.text     "C3f"
    t.text     "C3g"
    t.text     "C4"
    t.text     "C5"
    t.text     "C6"
    t.text     "C7"
    t.text     "I1"
    t.text     "I2a"
    t.text     "I2b"
    t.text     "I2c"
    t.text     "I2d"
    t.text     "I2e"
    t.text     "I2f"
    t.text     "I2g"
    t.text     "I2h"
    t.text     "I2i"
    t.text     "I2j"
    t.text     "I2k1"
    t.text     "I2k2"
    t.string   "J1aLtext"
    t.text     "J2a"
    t.text     "J2b"
    t.text     "J2c"
    t.text     "J2d"
    t.text     "J2e"
    t.text     "J2f"
    t.text     "J2g"
    t.text     "J2h"
    t.text     "J2i"
    t.text     "J2j"
    t.text     "J2k1"
    t.text     "J2k2"
    t.text     "K1a"
    t.text     "K2a"
    t.text     "K3a"
    t.text     "K4a"
    t.text     "K5a"
    t.text     "K6a"
    t.text     "K7a"
    t.text     "L1a"
    t.text     "L1b"
    t.text     "L2"
    t.text     "L3"
    t.text     "L4a"
    t.text     "L4b"
    t.text     "L4c"
    t.text     "M1"
    t.text     "M2"
    t.text     "M3"
    t.text     "M3a"
    t.text     "M4"
    t.text     "M5"
    t.text     "qe1"
    t.text     "qe2"
    t.text     "qe3"
    t.text     "qe4"
    t.text     "qe5"
    t.text     "qe6"
    t.text     "qe7"
    t.text     "qe8"
    t.text     "qe9"
    t.text     "qe10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
