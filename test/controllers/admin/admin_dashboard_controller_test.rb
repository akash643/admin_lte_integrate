require "test_helper"

class Admin::AdminDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_admin_dashboard_index_url
    assert_response :success
  end
end
