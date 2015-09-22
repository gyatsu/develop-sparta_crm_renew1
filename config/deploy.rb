# config valid only for Capistrano 3.1


set :application, 'sparta_crm.renew1'
set :repo_url, 'git@github.com:gyatsu/develop-sparta_crm_renew1.git'

set :deploy_to, '/var/www/'
set :scm, :git
set :keep_releases, 5

# rbenvの設定 (環境によってrbenvの場所が違うと思います。)
set :default_env, {
  rbenv_root: "/usr/local/rbenv/",
  path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH"
}

# Unicorn周りの設定
set :unicorn_rack_env, "production"
set :unicorn_config_path, "config/unicorn.rb"
set :unicorn_pid, "/tmp/unicorn_sparta_crm_renew.pid"

# currentからsharedへsymlinkを貼るものを指定
set :linked_dirs, %w{bin bundle log tmp/pids tmp/cache tmp/sockets public/system}

# logを詳細表示
set :format, :pretty
set :log_level, :debug

namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end

  after :finished, :restart
end

desc 'execute before deploy'
task :db_create do
  on roles(:db) do |host|
    execute "mysql -uroot -e 'CREATE DATABASE IF NOT EXISTS sparta_crm_renew_production;'"
  end
end
