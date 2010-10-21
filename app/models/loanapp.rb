# == Schema Information
# Schema version: 20101020132510
#
# Table name: loanapps
#
#  id                                  :integer         not null, primary key
#  loan_type                           :string(255)
#  amount_requested                    :string(255)
#  preferred_closing_location          :string(255)
#  applicant_name                      :string(255)
#  applicant_account_number            :string(255)
#  applicant_address                   :string(255)
#  applicant_city                      :string(255)
#  applicant_state                     :string(255)
#  applicant_zip                       :integer
#  applicant_home_phone                :string(255)
#  applicant_cell_phone                :string(255)
#  applicant_time_to_call              :string(255)
#  applicant_email_address             :string(255)
#  applicant_employer                  :string(255)
#  applicant_hire_date                 :string(255)
#  applicant_employer_address          :string(255)
#  applicant_work_phone                :string(255)
#  applicant_monthly_salary            :string(255)
#  applicant_ssn                       :string(255)
#  applicant_date_of_birth             :string(255)
#  applicant_other_income              :string(255)
#  applicant_other_income_source       :string(255)
#  applicant_mortgage_rent_payment     :string(255)
#  coapplicant_name                    :string(255)
#  coapplicant_account_number          :string(255)
#  coapplicant_address                 :string(255)
#  coapplicant_city                    :string(255)
#  coapplicant_state                   :string(255)
#  coapplicant_zip                     :integer
#  coapplicant_home_phone              :string(255)
#  coapplicant_cell_phone              :string(255)
#  coapplicant_time_to_call            :string(255)
#  coapplicant_email_address           :string(255)
#  coapplicant_employer                :string(255)
#  coapplicant_hire_date               :string(255)
#  coapplicant_employer_address        :string(255)
#  coapplicant_work_phone              :string(255)
#  coapplicant_monthly_salary          :string(255)
#  coapplicant_ssn                     :string(255)
#  coapplicant_date_of_birth           :string(255)
#  coapplicant_other_income            :string(255)
#  coapplicant_other_income_source     :string(255)
#  coapplicant_mortgage_rent_payment   :string(255)
#  credit_life_or_disability_insurance :string(255)
#  created_at                          :datetime
#  updated_at                          :datetime
#

class Loanapp < ActiveRecord::Base
	#checking for required fields
	validates_presence_of :loan_type, :amount_requested, :preferred_closing_location, :credit_life_or_disability_insurance, :applicant_name, :applicant_account_number, :applicant_address, :applicant_city, :applicant_state, :applicant_zip, :applicant_monthly_salary, :applicant_home_phone, :applicant_email_address, :applicant_ssn, :applicant_date_of_birth, :applicant_employer, :applicant_hire_date

	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :applicant_email_address, :with => EmailRegex, :if => "!applicant_email_address.blank?"
	validates_format_of :coapplicant_email_address, :with => EmailRegex, :if => "!coapplicant_email_address.blank?"
	
	#validating input for any SSN entered
	SSNformat = /\A[0-9]{3}+-[0-9]{2}+-[0-9]{4}+\z/i
	validates_format_of :applicant_ssn, :with => SSNformat, :if => "!applicant_ssn.blank?"
	validates_format_of :coapplicant_ssn, :with => SSNformat, :if => "!coapplicant_ssn.blank?"	
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :applicant_home_phone, :with => Phoneformat, :if => "!applicant_home_phone.blank?"
	validates_format_of :applicant_work_phone, :with => Phoneformat, :if => "!applicant_work_phone.blank?"
	validates_format_of :applicant_cell_phone, :with => Phoneformat, :if => "!applicant_cell_phone.blank?"
	validates_format_of :coapplicant_home_phone, :with => Phoneformat, :if => "!coapplicant_home_phone.blank?"
	validates_format_of :coapplicant_work_phone, :with => Phoneformat, :if => "!coapplicant_work_phone.blank?"
	validates_format_of :coapplicant_cell_phone, :with => Phoneformat, :if => "!coapplicant_cell_phone.blank?"	
	
	#other validations
	validates_presence_of :coapplicant_account_number, :coapplicant_address, :coapplicant_city, :coapplicant_state, :coapplicant_zip, :coapplicant_monthly_salary, :coapplicant_home_phone, :coapplicant_email_address, :coapplicant_ssn, :coapplicant_date_of_birth, :if => "!coapplicant_name.blank?"
end
