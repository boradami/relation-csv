require "test_helper"

class DistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dists_index_url
    assert_response :success
  end
end
