require 'test_helper'

class BananaControllerTest < ActionDispatch::IntegrationTest
  test "should get info" do
    get banana_info_url
    assert_response :success
  end

end
