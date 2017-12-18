class ExampleJob < ApplicationJob
  faktory_options queue: :examples

  def perform(job_id)
    puts "===> transmitting new message..."
    job = Job.find(job_id)
    sleep 5
    puts job.message
    job.update!(executed_at: DateTime.now)
    puts '<=== done.'
  end
end
