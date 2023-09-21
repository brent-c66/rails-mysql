class SneakersMediumJob
  include Sneakers::Worker
  from_queue "medium", prefetch: 1, threads: 1

  def work(msg)
    puts "Running inside sneakers - medium queue!"
    puts "Sleeping for 30 seconds"
    sleep 30
    puts "Done sleeping"
    ack!
  end
end
