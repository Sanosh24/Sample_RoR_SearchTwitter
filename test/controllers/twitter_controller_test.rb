require 'test_helper'

class TwitterControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get twitter_home_url
    assert_response :success
  end

  test "should get search" do
    get twitter_search_url
    assert_response :success
  end

end
