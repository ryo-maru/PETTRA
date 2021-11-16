
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_15_121418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.integer "medical_record_number"
    t.string "animal_major_classification"
    t.string "animal_subcategory"
    t.string "name"
    t.date "last_visit_date"
  end

  create_table "deseases", force: :cascade do |t|
    t.integer "disease_number"
    t.string "animal_category"
    t.string "disease"
    t.string "sym_part"
    t.string "symptom"
    t.string "url"
  end

  create_table "disease", force: :cascade do |t|
    t.integer "disease_number"
    t.string "animal_category"
    t.string "disease"
    t.string "sym_part"
    t.string "symptom"
    t.string "url"
  end

  create_table "kartes", force: :cascade do |t|
    t.integer "karte_number"
    t.integer "patient_number"
    t.string "s"
    t.string "o"
    t.string "a"
    t.string "p"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
