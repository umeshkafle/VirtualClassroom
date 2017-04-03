require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get sessions_update_url
    assert_response :success
  end

end
