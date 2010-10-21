# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101020163513) do

  create_table "boardlogins", :force => true do |t|
    t.string   "userid"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guestbooks", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "JCFCU_member"
    t.string   "your_system"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loanapps", :force => true do |t|
    t.string   "loan_type"
    t.string   "amount_requested"
    t.string   "preferred_closing_location"
    t.string   "applicant_name"
    t.string   "applicant_account_number"
    t.string   "applicant_address"
    t.string   "applicant_city"
    t.string   "applicant_state"
    t.integer  "applicant_zip"
    t.string   "applicant_home_phone"
    t.string   "applicant_cell_phone"
    t.string   "applicant_time_to_call"
    t.string   "applicant_email_address"
    t.string   "applicant_employer"
    t.string   "applicant_hire_date"
    t.string   "applicant_employer_address"
    t.string   "applicant_work_phone"
    t.string   "applicant_monthly_salary"
    t.string   "applicant_ssn"
    t.string   "applicant_date_of_birth"
    t.string   "applicant_other_income"
    t.string   "applicant_other_income_source"
    t.string   "applicant_mortgage_rent_payment"
    t.string   "coapplicant_name"
    t.string   "coapplicant_account_number"
    t.string   "coapplicant_address"
    t.string   "coapplicant_city"
    t.string   "coapplicant_state"
    t.integer  "coapplicant_zip"
    t.string   "coapplicant_home_phone"
    t.string   "coapplicant_cell_phone"
    t.string   "coapplicant_time_to_call"
    t.string   "coapplicant_email_address"
    t.string   "coapplicant_employer"
    t.string   "coapplicant_hire_date"
    t.string   "coapplicant_employer_address"
    t.string   "coapplicant_work_phone"
    t.string   "coapplicant_monthly_salary"
    t.string   "coapplicant_ssn"
    t.string   "coapplicant_date_of_birth"
    t.string   "coapplicant_other_income"
    t.string   "coapplicant_other_income_source"
    t.string   "coapplicant_mortgage_rent_payment"
    t.string   "credit_life_or_disability_insurance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memapps", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "employer"
    t.string   "position"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "ssn"
    t.string   "date_of_birth"
    t.string   "relatives_name"
    t.string   "best_time_to_Call"
    t.string   "eligibility"
    t.string   "school_name"
    t.string   "organization_of_volunteer"
    t.string   "current_members_name"
    t.string   "county_of_residence"
    t.string   "us_citizen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
