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

ActiveRecord::Schema.define(version: 20160220044630) do

  create_table "contests", force: :cascade do |t|
    t.integer  "user1"
    t.integer  "user2"
    t.integer  "user3"
    t.integer  "user4"
    t.integer  "problem1"
    t.integer  "problem2"
    t.integer  "problem3"
    t.integer  "problem4"
    t.integer  "problem5"
    t.integer  "problem6"
    t.integer  "problem7"
    t.integer  "problem8"
    t.integer  "problem9"
    t.integer  "problem10"
    t.integer  "problem11"
    t.integer  "problem12"
    t.integer  "problem13"
    t.integer  "problem14"
    t.integer  "problem15"
    t.integer  "problem16"
    t.integer  "problem17"
    t.integer  "problem18"
    t.integer  "problem19"
    t.integer  "problem20"
    t.integer  "problem21"
    t.integer  "problem22"
    t.integer  "problem23"
    t.integer  "problem24"
    t.integer  "problem25"
    t.integer  "result1"
    t.integer  "result2"
    t.integer  "result3"
    t.integer  "result4"
    t.integer  "result5"
    t.integer  "result6"
    t.integer  "result7"
    t.integer  "result8"
    t.integer  "result9"
    t.integer  "result10"
    t.integer  "result11"
    t.integer  "result12"
    t.integer  "result13"
    t.integer  "result14"
    t.integer  "result15"
    t.integer  "result16"
    t.integer  "result17"
    t.integer  "result18"
    t.integer  "result19"
    t.integer  "result20"
    t.integer  "result21"
    t.integer  "result22"
    t.integer  "result23"
    t.integer  "result24"
    t.integer  "result25"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problems", force: :cascade do |t|
    t.string   "content"
    t.integer  "result"
    t.integer  "sum"
    t.integer  "user_id"
    t.string   "select1"
    t.string   "select2"
    t.string   "select3"
    t.string   "select4"
    t.integer  "result_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "point"
    t.integer  "join"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
