require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get messages_post_url
    assert_response :success
  end

end
