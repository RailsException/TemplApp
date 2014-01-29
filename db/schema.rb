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

ActiveRecord::Schema.define(:version => 20140128220514) do

  create_table "donars", :force => true do |t|
    t.string   "first_name", :limit => 55
    t.string   "last_name",  :limit => 55
    t.string   "email"
    t.string   "refemail"
    t.date     "dob"
    t.string   "address1",   :limit => 55
    t.string   "address2",   :limit => 55
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "gotra"
    t.integer  "user_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "donars", ["email"], :name => "index_donars_on_email", :unique => true
  add_index "donars", ["user_id"], :name => "index_donars_on_user_id"

  create_table "mservices", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tests", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tests", ["user_id"], :name => "index_tests_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "role",       :default => "user"
  end

end
