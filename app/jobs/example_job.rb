class ExampleJob < ApplicationJob
  faktory_options queue: :examples

  def perform(message)
    puts "===> creating new message..."
    job = Job.create!(message: message)
    puts "===> transmitting new message..."
    sleep 5
    puts job.message
    puts '<=== done.'
  end
end
