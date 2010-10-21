class CreateMemapps < ActiveRecord::Migration
  def self.up
    create_table :memapps do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :employer
      t.string :position
      t.string :home_phone
      t.string :work_phone
      t.string :ssn
      t.string :date_of_birth
      t.string :relatives_name
      t.string :best_time_to_Call
      t.string :eligibility
      t.string :school_name
      t.string :organization_of_volunteer
      t.string :current_members_name
      t.string :county_of_residence
      t.string :us_citizen

      t.timestamps
    end
  end

  def self.down
    drop_table :memapps
  end
end
