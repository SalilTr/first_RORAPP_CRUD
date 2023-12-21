require "test_helper"

class PersonelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personels_index_url
    assert_response :success
  end
end
