require 'test_helper'

class LecturerDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lecturer_dashboard_index_url
    assert_response :success
  end

end
