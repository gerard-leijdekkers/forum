$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                               # Load RVM's capistrano plugin.
set :rvm_ruby_string, '1.9.2-p180@forum'               # Or whatever env you want it to run in.
set :rvm_type, :user                                   # Copy the exact line. I really mean :user here