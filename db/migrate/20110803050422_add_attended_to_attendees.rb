class AddAttendedToAttendees < ActiveRecord::Migration
  def self.up
    add_column :attendees, :attended, :boolean, :default => false
  end

  def self.down
    remove_column :attendees, :attended
  end
end
