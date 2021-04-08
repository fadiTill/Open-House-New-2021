require 'test_helper'

class PublicpageControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get publicpage_main_url
    assert_response :success
  end

end
