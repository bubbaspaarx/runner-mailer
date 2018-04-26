require 'test_helper'

class RunnerControllerTest < ActionDispatch::IntegrationTest
  test "should get send_mail" do
    get runner_send_mail_url
    assert_response :success
  end

end
