require 'test_helper'

class ScheduleItemTypeTest < ActiveSupport::TestCase
  
  test "presence of ScheduleItemType.html_options_array" do
    assert ScheduleItemType.respond_to?(:html_options_array)
  end
  
  test "ScheduleItemType.html_options_array" do
    ScheduleItemType.destroy_all
    ["Type 1", "Type 2"].each { |t| ScheduleItemType.create(:name => t) }
    t1 = ScheduleItemType.first
    t2 = ScheduleItemType.last
    
    assert_equal [["Type 1", t1.id],["Type 2", t2.id]], ScheduleItemType.html_options_array
  end
end
