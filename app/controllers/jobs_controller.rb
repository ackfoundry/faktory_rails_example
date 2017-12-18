class JobsController < ApplicationController
  def index
    @new_job = Job.new
    @jobs = Job.order(created_at: :desc).last(25)
  end

  def create
    job = Job.create!(job_params)
    ExampleJob.perform_async(job.id)

    redirect_to root_path
  end

  protected

  def job_params
    params.require(:job).permit(:message)
  end
end
