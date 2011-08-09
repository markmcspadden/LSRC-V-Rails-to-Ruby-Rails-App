class AddScheduleItemTypeIdAndScheduleItemLevelIdToScheduleItems < ActiveRecord::Migration
  def self.up
    add_column :schedule_items, :schedule_item_type_id, :integer
    add_column :schedule_items, :schedule_item_level_id, :integer
  end

  def self.down
    remove_column :schedule_items, :schedule_item_type_id
    remove_column :schedule_items, :schedule_item_level_id
  end
end
