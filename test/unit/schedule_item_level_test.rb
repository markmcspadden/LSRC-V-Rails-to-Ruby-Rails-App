require 'test_helper'

class ScheduleItemLevelTest < ActiveSupport::TestCase
  test "ScheduleItemLevel.html_options_array" do
    ScheduleItemLevel.destroy_all
    ["Level 1", "Level 2", "Level 3"].each { |t| ScheduleItemLevel.create(:name => t) }
    levels = ScheduleItemLevel.all
    l1 = levels[0]
    l2 = levels[1]
    l3 = levels[2]
    
    assert_equal [["LEVEL 1", l1.id],["LEVEL 2", l2.id],["LEVEL 3", l3.id]], ScheduleItemLevel.html_options_array
  end
end
