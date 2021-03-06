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

ActiveRecord::Schema.define(version: 20141027091416) do

  create_table "business_profiles", force: true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "business_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "business_users", ["business_profile_id"], name: "index_business_users_on_business_profile_id"
  add_index "business_users", ["user_id"], name: "index_business_users_on_user_id"

  create_table "enquiries", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "testimonials", force: true do |t|
    t.integer  "star_rating"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "business_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testimonials", ["business_profile_id"], name: "index_testimonials_on_business_profile_id"
  add_index "testimonials", ["user_id"], name: "index_testimonials_on_user_id"

  create_table "user_profiles", force: true do |t|
    t.string   "name"
    t.string   "profile_pic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
