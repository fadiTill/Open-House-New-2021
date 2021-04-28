require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_index_url
    assert_response :success
  end

  test "should get houses" do
    get dashboard_houses_url
    assert_response :success
  end

  test "should get reports" do
    get dashboard_reports_url
    assert_response :success
  end

end
