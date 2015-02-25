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

ActiveRecord::Schema.define(version: 20150225101820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.integer  "set",             null: false
    t.string   "hearthstone_id",  null: false
    t.integer  "card_type",       null: false
    t.string   "name",            null: false
    t.string   "name_ja"
    t.text     "text"
    t.text     "text_ja"
    t.boolean  "collectible"
    t.integer  "player_class"
    t.integer  "cost"
    t.integer  "attack"
    t.integer  "health"
    t.integer  "durability"
    t.text     "mechanics"
    t.integer  "rarity"
    t.integer  "race"
    t.integer  "faction"
    t.boolean  "elite"
    t.text     "how_to_get"
    t.text     "how_to_get_gold"
    t.text     "flavor"
    t.text     "in_play_text"
    t.string   "artist"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "cards", ["hearthstone_id"], name: "index_cards_on_hearthstone_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.string   "nickname",   null: false
    t.string   "image_url",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true, using: :btree

end
