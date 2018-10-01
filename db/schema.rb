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

ActiveRecord::Schema.define(version: 2018_10_01_183720) do

  create_table "audis", force: :cascade do |t|
    t.integer "number"
    t.integer "seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "theater_id"
    t.index ["theater_id"], name: "index_audis_on_theater_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.integer "seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "show_id"
    t.integer "theater_id"
    t.index ["show_id"], name: "index_bookings_on_show_id"
    t.index ["theater_id"], name: "index_bookings_on_theater_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "audi_id"
    t.index ["audi_id"], name: "index_movies_on_audi_id"
  end

  create_table "shows", force: :cascade do |t|
    t.integer "time"
    t.integer "seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "audi_id"
    t.index ["audi_id"], name: "index_shows_on_audi_id"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "audi_id"
    t.integer "movie_id"
    t.integer "booking_id"
    t.index ["audi_id"], name: "index_tickets_on_audi_id"
    t.index ["booking_id"], name: "index_tickets_on_booking_id"
    t.index ["movie_id"], name: "index_tickets_on_movie_id"
  end

  create_table "viewers", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
