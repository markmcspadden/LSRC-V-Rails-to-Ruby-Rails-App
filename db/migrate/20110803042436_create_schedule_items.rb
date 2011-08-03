class CreateScheduleItems < ActiveRecord::Migration
  def self.up
    create_table :schedule_items do |t|
      t.string :title
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end

  def self.down
    drop_table :schedule_items
  end
end
