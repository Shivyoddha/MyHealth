require "test_helper"

class DoctorControllerTest < ActionDispatch::IntegrationTest
  test "should get myslot" do
    get doctor_myslot_url
    assert_response :success
  end
end
