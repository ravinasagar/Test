require 'test_helper'

class UploadersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get uploaders_index_url
    assert_response :success
  end

end
