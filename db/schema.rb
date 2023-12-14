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

ActiveRecord::Schema[7.0].define(version: 2023_12_13_041717) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carriers", force: :cascade do |t|
    t.string "carrier_id"
    t.date "registration_date"
    t.integer "capital"
    t.integer "number_of_employees"
    t.string "vehicle_type1"
    t.string "vehicle_type2"
    t.string "vehicle_type3"
    t.string "vehicle_type4"
    t.string "vehicle_type5"
    t.boolean "presence_of_warehouse"
    t.text "insurance_policy1"
    t.text "insurance_policy2"
    t.integer "guarantee_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dispatchers", force: :cascade do |t|
    t.string "dispatcher_id"
    t.string "name"
    t.text "contact_info"
    t.text "assigned_loads"
    t.text "schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "driver_id"
    t.string "name"
    t.text "license_details"
    t.integer "experience"
    t.boolean "availability_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loads", force: :cascade do |t|
    t.string "load_id"
    t.text "description"
    t.string "size"
    t.string "destination"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relay_points", force: :cascade do |t|
    t.string "relay_point_id"
    t.string "location"
    t.integer "capacity"
    t.text "available_services"
    t.text "contact_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shippers", force: :cascade do |t|
    t.string "shipper_id"
    t.string "company_name"
    t.text "contact_info"
    t.text "history_of_shipments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_id"
    t.string "type"
    t.integer "capacity"
    t.string "maintenance_status"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
