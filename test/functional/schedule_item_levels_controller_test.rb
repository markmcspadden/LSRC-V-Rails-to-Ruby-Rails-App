require 'test_helper'

class ScheduleItemLevelsControllerTest < ActionController::TestCase
  setup do
    @schedule_item_level = schedule_item_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_item_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_item_level" do
    assert_difference('ScheduleItemLevel.count') do
      post :create, :schedule_item_level => @schedule_item_level.attributes
    end

    assert_redirected_to schedule_item_level_path(assigns(:schedule_item_level))
  end

  test "should show schedule_item_level" do
    get :show, :id => @schedule_item_level.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @schedule_item_level.to_param
    assert_response :success
  end

  test "should update schedule_item_level" do
    put :update, :id => @schedule_item_level.to_param, :schedule_item_level => @schedule_item_level.attributes
    assert_redirected_to schedule_item_level_path(assigns(:schedule_item_level))
  end

  test "should destroy schedule_item_level" do
    assert_difference('ScheduleItemLevel.count', -1) do
      delete :destroy, :id => @schedule_item_level.to_param
    end

    assert_redirected_to schedule_item_levels_path
  end
end
