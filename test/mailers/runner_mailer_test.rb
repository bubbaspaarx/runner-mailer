require 'test_helper'

class RunnerMailerTest < ActionMailer::TestCase
  test "weekly_digest" do
    mail = RunnerMailer.weekly_digest
    assert_equal "Weekly digest", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
