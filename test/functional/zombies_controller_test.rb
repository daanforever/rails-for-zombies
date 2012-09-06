require 'test_helper'

class ZombiesControllerTest < ActionController::TestCase
  test "should get view" do
    get :show
    assert_response :success
  end

end
