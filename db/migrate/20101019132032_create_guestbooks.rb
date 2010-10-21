class CreateGuestbooks < ActiveRecord::Migration
  def self.up
    create_table :guestbooks do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :JCFCU_member
      t.string :your_system
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :guestbooks
  end
end
