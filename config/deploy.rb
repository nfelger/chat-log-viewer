set :default_shell, "/bin/bash"

$:.unshift(File.expand_path('./lib', '~/.rvm'))
require "rvm/capistrano"
set :rvm_ruby_string, '1.9.2'
set :rvm_type, :user

require 'bundler/capistrano'

set :application, "chat_logs"
set :repository,  "git@github.com:nfelger/chat-log-viewer.git"

set :scm, :git
set :user, "nfelger"
set :deploy_via, :remote_cache
set :deploy_to, "/home/nfelger/apps/#{application}"

role :app, "of1-dev-nfelger"

namespace :deploy do
  task :finalize_update do ; end
  task :start do ; end
  task :stop do ; end
  task :restart do ; end
end
