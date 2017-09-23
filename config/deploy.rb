# config valid only for Capistrano 3.1
lock '3.9.1'

set :application, 'leverages_internship'
set :repo_url, 'git@github.com:KeisukeYamashita/leverages_internship.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/usr/share/nginx/leverages_internship'

# Default value for :scm is :git
set :default_stage, "production"
set :scm, :git
set :deploy_via, :remote_cache

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/secrets.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

set :unicorn_pid, "#{shared_path}/tmp/pids/unicorn.pid"

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :mkdir, '-p', release_path.join('tmp')
      invoke 'unicorn:restart'
    end
  end

  desc 'upload important files'
  task :upload do
    on roles(:app) do |host|
      execute :mkdir, '-p', "#{shared_path}/config"
      upload!('config/database.yml',"#{shared_path}/config/database.yml")
      upload!('config/secrets.yml',"#{shared_path}/config/secrets.yml")
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within release_path do
        execute :rm, '-rf', release_path.join('tmp/cache')
      end
    end
  end

  before :started, 'deploy:upload'
  after :finishing, 'deploy:cleanup'

  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end
