# Preview all emails at http://localhost:3000/rails/mailers/runner_mailer
class RunnerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/runner_mailer/weekly_digest
  def weekly_digest
    RunnerMailer.weekly_digest
  end

end
