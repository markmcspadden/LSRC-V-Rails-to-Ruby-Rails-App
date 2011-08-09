class CreateScheduleItemTypes < ActiveRecord::Migration
  def self.up
    create_table :schedule_item_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :schedule_item_types
  end
end
