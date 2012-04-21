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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120421182147) do

  create_table "auctions", :force => true do |t|
    t.integer  "car_id"
    t.integer  "start_price"
    t.datetime "listed_at"
    t.datetime "ends_at"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "auctions", ["car_id"], :name => "index_auctions_on_car_id"

  create_table "car_attributes", :force => true do |t|
    t.integer  "car_id"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "car_attributes", ["car_id"], :name => "index_car_attributes_on_car_id"

  create_table "cars", :force => true do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "model_id"
    t.integer  "mileage"
    t.string   "color"
    t.integer  "dealer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cars", ["dealer_id"], :name => "index_cars_on_dealer_id"
  add_index "cars", ["model_id"], :name => "index_cars_on_model_id"

  create_table "dealers", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "models", :force => true do |t|
    t.string   "name"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "models", ["manufacturer_id"], :name => "index_models_on_manufacturer_id"

end
