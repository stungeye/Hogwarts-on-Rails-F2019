require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get teachers_show_url
    assert_response :success
  end

end
