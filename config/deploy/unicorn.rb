set :rails_env, :production

namespace :deploy do
  task :start, :roles => :app, :except => { :no_release => true } do 
    run "cd #{current_path}; RAILS_ENV=production bundle exec script/unicorn start"
  end
  
  task :stop, :roles => :app, :except => { :no_release => true } do 
    run "cd #{current_path}; RAILS_ENV=production bundle exec script/unicorn stop"
  end
  
  task :graceful_stop, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path}; RAILS_ENV=production bundle exec script/unicorn graceful"
  end
  
  task :reload, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path}; RAILS_ENV=production bundle exec script/unicorn reload"
  end
  
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path}; RAILS_ENV=production bundle exec script/unicorn restart"
  end
end