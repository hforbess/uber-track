namespace :puma do
  desc "TODO"
  task start: :environment do
    `rails s -b0.0.0.0 -d`
  end

  desc "TODO"
  task stop: :environment do
    if File.exist? 'tmp/pids/server.pid'
      server_pid = File.read( 'tmp/pids/server.pid')
      `kill  #{ server_pid }`
    else
      puts 'rails doesn\'t seem to be running'
    end  
  end

end
