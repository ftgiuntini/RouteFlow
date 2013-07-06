require 'test_helper'

class ShowRotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
