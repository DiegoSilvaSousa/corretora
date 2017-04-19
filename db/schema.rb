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

ActiveRecord::Schema.define(version: 20170416213256) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "type_address"
    t.string   "name"
    t.string   "number"
    t.string   "add_on"
    t.string   "neighborhood"
    t.string   "city"
    t.integer  "state"
    t.string   "code_postal"
    t.integer  "client_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["client_id"], name: "index_addresses_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "email"
    t.integer  "active"
    t.integer  "imported"
    t.text     "observations"
    t.integer  "score"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name_company"
    t.string   "social_name__company"
    t.string   "number_cnpj_company"
    t.string   "numer_ie_company"
    t.integer  "client_id"
    t.integer  "individual_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["client_id"], name: "index_companies_on_client_id"
    t.index ["individual_id"], name: "index_companies_on_individual_id"
  end

  create_table "individuals", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday_date"
    t.integer  "genre"
    t.integer  "marital_status"
    t.string   "profession"
    t.string   "number_cpf"
    t.string   "number_identify"
    t.string   "number_driver"
    t.integer  "category_driver"
    t.date     "expiration_date"
    t.string   "year_driver"
    t.integer  "client_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["client_id"], name: "index_individuals_on_client_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.date     "start_date"
    t.date     "final_date"
    t.string   "apolice_number"
    t.integer  "has_sinister"
    t.integer  "status_apolice"
    t.integer  "id_productor"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_insurances_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.date     "due_date"
    t.decimal  "plot_value"
    t.string   "status_payment"
    t.integer  "user_id"
    t.integer  "insurance_id"
    t.integer  "proposal_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["insurance_id"], name: "index_payments_on_insurance_id"
    t.index ["proposal_id"], name: "index_payments_on_proposal_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "phones", force: :cascade do |t|
    t.integer  "type_phone"
    t.string   "number"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_phones_on_client_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.integer  "type_insurance"
    t.string   "objcet_insurance"
    t.decimal  "net_prize"
    t.decimal  "charges"
    t.decimal  "costs"
    t.decimal  "iof"
    t.decimal  "total"
    t.integer  "type_payment"
    t.integer  "number_payment"
    t.decimal  "comission_percentage"
    t.string   "observation"
    t.integer  "status"
    t.integer  "individual_id"
    t.integer  "company_id"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["company_id"], name: "index_proposals_on_company_id"
    t.index ["individual_id"], name: "index_proposals_on_individual_id"
    t.index ["user_id"], name: "index_proposals_on_user_id"
  end

  create_table "sinisters", force: :cascade do |t|
    t.string   "number_sinister"
    t.boolean  "cnh_sent"
    t.boolean  "bo_send"
    t.boolean  "accident_with_vicitims"
    t.text     "location_of_the_clain"
    t.string   "id_mechanical"
    t.text     "observations_mechanical"
    t.text     "observations_third_parties"
    t.date     "date_sinister"
    t.boolean  "backup_car"
    t.integer  "days_backup_car"
    t.integer  "completed_sinister"
    t.integer  "insurance_id"
    t.integer  "individual_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["individual_id"], name: "index_sinisters_on_individual_id"
    t.index ["insurance_id"], name: "index_sinisters_on_insurance_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "kind"
    t.integer  "status"
    t.text     "notes"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
