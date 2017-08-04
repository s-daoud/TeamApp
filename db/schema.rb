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

ActiveRecord::Schema.define(version: 20170804024733) do

  create_table "points", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                                           null: false
    t.integer  "points",                                            null: false
    t.string   "reason"
    t.datetime "date_created", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["user_id"], name: "index_points_on_user_id", using: :btree
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                              null: false
    t.datetime "date_created", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "date_updated", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["name"], name: "index_teams_on_name", unique: true, using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                              null: false
    t.integer  "team_id",                                           null: false
    t.datetime "date_created", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "date_updated", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["name", "team_id"], name: "index_users_on_name_and_team_id", unique: true, using: :btree
    t.index ["name"], name: "index_users_on_name", unique: true, using: :btree
  end

end
