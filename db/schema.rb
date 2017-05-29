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

ActiveRecord::Schema.define(version: 20170529000707) do

  create_table "unofficial_overwolf", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "username",              limit: 45
    t.json    "quick"
    t.json    "competitive"
    t.json    "playtime"
    t.string  "avatar",                limit: 45
    t.integer "competitive_rank"
    t.string  "competitive_ rank_img", limit: 45
    t.string  "levelFrame",            limit: 45
    t.string  "star",                  limit: 45
  end

  create_table "user_pvp_log", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint   "session_data_id"
    t.datetime "created_at",                         default: -> { "CURRENT_TIMESTAMP" }
    t.bigint   "offer_id"
    t.integer  "game_id",                            default: 0,                          null: false
    t.bigint   "user_id"
    t.text     "raw_data",        limit: 4294967295
    t.datetime "time"
    t.string   "category"
    t.string   "key"
    t.text     "value",           limit: 65535
    t.index ["category"], name: "category", using: :btree
    t.index ["key"], name: "key", using: :btree
    t.index ["offer_id"], name: "offer_id", using: :btree
    t.index ["session_data_id"], name: "session_data_id", using: :btree
    t.index ["user_id"], name: "user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 50
    t.string   "email",                 default: "", null: false
    t.string   "password",   limit: 50
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

end
