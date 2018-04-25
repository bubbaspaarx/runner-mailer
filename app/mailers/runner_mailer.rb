class RunnerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.runner_mailer.weekly_digest.subject
  #
  def weekly_digest(runner)
    @runner = runner
    if @runner.status == "lapsed"
      mail(to: @runner.email, subject: "It's been a while" )
    end
  end
end
