class CreateLoanapps < ActiveRecord::Migration
  def self.up
    create_table :loanapps do |t|
      t.string :loan_type
      t.string :amount_requested
      t.string :preferred_closing_location
      t.string :applicant_name
      t.string :applicant_account_number
      t.string :applicant_address
      t.string :applicant_city
      t.string :applicant_state
      t.integer :applicant_zip
      t.string :applicant_home_phone
      t.string :applicant_cell_phone
      t.string :applicant_time_to_call
      t.string :applicant_email_address
      t.string :applicant_employer
      t.string :applicant_hire_date
      t.string :applicant_employer_address
      t.string :applicant_work_phone
      t.string :applicant_monthly_salary
      t.string :applicant_ssn
      t.string :applicant_date_of_birth
      t.string :applicant_other_income
      t.string :applicant_other_income_source
      t.string :applicant_mortgage_rent_payment
      t.string :coapplicant_name
      t.string :coapplicant_account_number
      t.string :coapplicant_address
      t.string :coapplicant_city
      t.string :coapplicant_state
      t.integer :coapplicant_zip
      t.string :coapplicant_home_phone
      t.string :coapplicant_cell_phone
      t.string :coapplicant_time_to_call
      t.string :coapplicant_email_address
      t.string :coapplicant_employer
      t.string :coapplicant_hire_date
      t.string :coapplicant_employer_address
      t.string :coapplicant_work_phone
      t.string :coapplicant_monthly_salary
      t.string :coapplicant_ssn
      t.string :coapplicant_date_of_birth
      t.string :coapplicant_other_income
      t.string :coapplicant_other_income_source
      t.string :coapplicant_mortgage_rent_payment
	  t.string :credit_life_or_disability_insurance
      t.timestamps
    end
  end

  def self.down
    drop_table :loanapps
  end
end
