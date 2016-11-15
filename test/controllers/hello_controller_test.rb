require 'test_helper'

class HelloControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
    assert_not_nil assigns(:score)
    assert_select 'p', 'The score is 1234'
  end
  it "returns test2" do
    env = ENV.fetch("TEST_TWO");
    env.should eq("test")
  end
end
