class RunnerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.runner_mailer.weekly_digest.subject
  #
  def weekly_digest
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
