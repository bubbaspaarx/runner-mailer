# Preview all emails at http://localhost:3000/rails/mailers/runner_mailer
class RunnerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/runner_mailer/regular
  def regular
    RunnerMailer.regular(Runner.first)
  end

end
