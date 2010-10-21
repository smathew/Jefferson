# == Schema Information
# Schema version: 20101019150818
#
# Table name: memapps
#
#  id                        :integer         not null, primary key
#  name                      :string(255)
#  address                   :string(255)
#  city                      :string(255)
#  state                     :string(255)
#  zip                       :integer
#  employer                  :string(255)
#  position                  :string(255)
#  home_phone                :string(255)
#  work_phone                :string(255)
#  ssn                       :string(255)
#  date_of_birth             :string(255)
#  relatives_name            :string(255)
#  best_time_to_Call         :string(255)
#  eligibility               :string(255)
#  school_name               :string(255)
#  organization_of_volunteer :string(255)
#  current_members_name      :string(255)
#  county_of_residence       :string(255)
#  us_citizen                :string(255)
#  created_at                :datetime
#  updated_at                :datetime
#

class Memapp < ActiveRecord::Base
	#checking for required fields
	validates_presence_of :name, :address, :city, :state, :zip, :employer, :position, :home_phone, :ssn, :date_of_birth, :eligibility, :county_of_residence, :us_citizen

	#validating input for any SSN entered
	SSNformat = /\A[0-9]{3}+-[0-9]{2}+-[0-9]{4}+\z/i
	validates_format_of :ssn, :with => SSNformat, :if => "!ssn.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :home_phone, :with => Phoneformat, :if => "!home_phone.blank?"
	validates_format_of :work_phone, :with => Phoneformat, :if => "!work_phone.blank?"
	
	#other validations
	validates_presence_of :school_name,  :if => :request_school?
	def request_school?
		eligibility == "Student"
	end
	
	validates_presence_of :organization_of_volunteer, :if => :request_volunteer?
	def request_volunteer?
		eligibility == "Volunteer"
	end
	
	validates_presence_of :current_members_name,  :if => :request_family?
	def request_family?
		eligibility == "Immediate Family" or eligibility == "Household"
	end
end
