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

ActiveRecord::Schema.define(version: 2020_02_22_095730) do

  create_table "clothing_lines", force: :cascade do |t|
    t.string "name"
    t.text "tag_line"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clothing_lines_on_user_id"
  end

  create_table "female_measurements", force: :cascade do |t|
    t.integer "bust"
    t.integer "waist"
    t.integer "hip"
    t.integer "back_waist"
    t.integer "crotch"
    t.integer "arm_width"
    t.integer "arm_length"
    t.integer "height"
    t.integer "back"
    t.integer "trouser_length"
    t.integer "apex_to_apex"
    t.integer "shoulder_to_apex"
    t.text "note"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_female_measurements_on_user_id"
  end

  create_table "followings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "clothing_line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clothing_line_id"], name: "index_followings_on_clothing_line_id"
    t.index ["user_id"], name: "index_followings_on_user_id"
  end

  create_table "male_measurements", force: :cascade do |t|
    t.integer "back_width"
    t.integer "arm_circumference"
    t.integer "arm_length"
    t.integer "chest_width"
    t.integer "hip"
    t.integer "hip_length"
    t.integer "waist"
    t.integer "tie"
    t.integer "knee"
    t.integer "around_ankle_bar"
    t.integer "length"
    t.text "note"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_male_measurements_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image_url"
    t.integer "user_id"
    t.integer "clothing_line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clothing_line_id"], name: "index_posts_on_clothing_line_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "user_type"
    t.text "about_me"
    t.string "gender"
    t.string "unit_of_measure"
    t.text "address"
    t.string "city"
    t.string "country"
    t.string "country_code"
    t.string "phone_number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
