require "rvm/capistrano"                               # Load RVM's capistrano plugin.
set :rvm_ruby_string, '1.9.3@forum'                    # Or whatever env you want it to run in.
set :rvm_type, :user                                   # Copy the exact line. I really mean :user here