# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_20_001457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drafts", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "league_id", null: false
    t.index ["league_id"], name: "index_drafts_on_league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "picks", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "draft_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["draft_id"], name: "index_picks_on_draft_id"
    t.index ["player_id"], name: "index_picks_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.bigint "league_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "position_str"
    t.bigint "team_id", null: false
    t.string "fname"
    t.string "lname"
    t.integer "jersey"
    t.index ["league_id"], name: "index_players_on_league_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "league_id", null: false
    t.string "code"
    t.string "full_name"
    t.string "short_name"
    t.bigint "players_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_teams_on_league_id"
    t.index ["players_id"], name: "index_teams_on_players_id"
  end

  add_foreign_key "drafts", "leagues"
  add_foreign_key "picks", "drafts"
  add_foreign_key "picks", "players"
  add_foreign_key "players", "leagues"
  add_foreign_key "players", "teams"
  add_foreign_key "teams", "leagues"
  add_foreign_key "teams", "players", column: "players_id"
end
