# == Schema Information
# Schema version: 20101020163513
#
# Table name: boardlogins
#
#  id         :integer         not null, primary key
#  userid     :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Boardlogin < ActiveRecord::Base
	validates_presence_of :userid, :password
	
	validate :is_valid, :if => "!userid.blank?" and "!password.blank?"

  def is_valid
    errors.add(:base, "The userid and password combination must be wrong") unless userid == 'official' and password == 'jcfop14'
  end
end
