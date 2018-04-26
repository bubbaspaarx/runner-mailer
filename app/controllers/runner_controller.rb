class RunnerController < ApplicationController
  def send_mail
    @runner = Runner.find(params[:id])
    RunnerMailer.runnermail(@runner).deliver_now
    redirect_to trainer_path(@runner.trainer)
  end
end
