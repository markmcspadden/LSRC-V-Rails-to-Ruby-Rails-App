require 'test_helper'

class ScheduleItemLevelsControllerTest < ActionController::TestCase
  
  test "should get index" do
    get :index
    assert_response :success
  end
  
  test "sir mark mcspadden" do
    get :index
    puts @response.body
    
    marks = @response.body.scan(/Mark McSpadden/i)
    sir_marks = @response.body.scan(/Sir Mark McSpadden/i)
    assert_equal marks.size, sir_marks.size, "#{marks} Marks found and #{sir_marks} Sir Marks"
    dbl_sirs = @response.body.scan(/(Sir ){2,100}/i)
    assert dbl_sirs.empty?, "Found Sir Sir in output"
  end  
  
end