require 'test_helper'

class RtablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rtable = rtables(:one)
  end

  test "should get index" do
    get rtables_url
    assert_response :success
  end

  test "should get new" do
    get new_rtable_url
    assert_response :success
  end

  test "should create rtable" do
    assert_difference('Rtable.count') do
      post rtables_url, params: { rtable: { max_guest: @rtable.max_guest, min_guest: @rtable.min_guest, name: @rtable.name } }
    end

    assert_redirected_to rtable_url(Rtable.last)
  end

  test "should show rtable" do
    get rtable_url(@rtable)
    assert_response :success
  end

  test "should get edit" do
    get edit_rtable_url(@rtable)
    assert_response :success
  end

  test "should update rtable" do
    patch rtable_url(@rtable), params: { rtable: { max_guest: @rtable.max_guest, min_guest: @rtable.min_guest, name: @rtable.name } }
    assert_redirected_to rtable_url(@rtable)
  end

  test "should destroy rtable" do
    assert_difference('Rtable.count', -1) do
      delete rtable_url(@rtable)
    end

    assert_redirected_to rtables_url
  end
end
