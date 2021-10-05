require "test_helper"

class TalukasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get talukas_index_url
    assert_response :success
  end
end
