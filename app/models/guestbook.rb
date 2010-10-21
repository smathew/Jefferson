# == Schema Information
# Schema version: 20101019132032
#
# Table name: guestbooks
#
#  id            :integer         not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  email_address :string(255)
#  JCFCU_member  :string(255)
#  your_system   :string(255)
#  comments      :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Guestbook < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :email_address, :JCFCU_member
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email_address, :with => EmailRegex, :if => "!email_address.blank?"
	
	validates_length_of :comments, :maximum=> 254, :message => " cannot be more than 250 characters", :if => "!comments.blank?"
end
