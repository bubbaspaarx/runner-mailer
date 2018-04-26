class RunnerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.runner_mailer.weekly_digest.subject
  #
  def runnermail(runner)
    status = runner.status
    runner.last_email = Date.today
    runner.save!
    subject = ""
    if status == "regular"
      subject = "Here's what we've been up to this week"
    elsif status == "lapsed"
      subject = "It's been a while"
    else
      subject = "Make your first step into GoodGym"
    end
    @runner = runner
    mail(to: @runner.email, subject: subject, template_name: status )
  end
end
