class ScheduleItem < ActiveRecord::Base

  belongs_to :schedule_item_type
  belongs_to :schedule_item_level

end
