class CreateBoardlogins < ActiveRecord::Migration
  def self.up
    create_table :boardlogins do |t|
      t.string :userid
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :boardlogins
  end
end
