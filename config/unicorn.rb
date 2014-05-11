# ワーカーの数
worker_processes 2

# ソケット経由で通信する
#listen File.expand_path('tmp/sockets/unicorn.sock', ENV['RAILS_ROOT']), :backlog => 1
#listen 4000, :tcp_nopush => true
listen '/Users/takahashiseiji/Desktop/tobitate/tmp/sockets/unicorn.sock', :backlog => 1

# ログ
stderr_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])
stdout_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])

# ダウンタイムなくす
preload_app true

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

  old_pid = "#{ server.config[:pid] }.oldbin"
  unless old_pid == server.pid
    begin
      # SIGTTOU だと worker_processes が多いときおかしい気がする
      Process.kill :QUIT, File.read(old_pid).to_i
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
