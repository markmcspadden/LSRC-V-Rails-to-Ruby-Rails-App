require 'test_helper'

class ScheduleItemTypesControllerTest < ActionController::TestCase
  setup do
    @schedule_item_type = schedule_item_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedule_item_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule_item_type" do
    assert_difference('ScheduleItemType.count') do
      post :create, :schedule_item_type => @schedule_item_type.attributes
    end

    assert_redirected_to schedule_item_type_path(assigns(:schedule_item_type))
  end

  test "should show schedule_item_type" do
    get :show, :id => @schedule_item_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @schedule_item_type.to_param
    assert_response :success
  end

  test "should update schedule_item_type" do
    put :update, :id => @schedule_item_type.to_param, :schedule_item_type => @schedule_item_type.attributes
    assert_redirected_to schedule_item_type_path(assigns(:schedule_item_type))
  end

  test "should destroy schedule_item_type" do
    assert_difference('ScheduleItemType.count', -1) do
      delete :destroy, :id => @schedule_item_type.to_param
    end

    assert_redirected_to schedule_item_types_path
  end
end
