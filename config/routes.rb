Forum::Application.routes.draw do
  devise_for :users
  
  get 'users/sign_in' => 'devise/sessions#new', :as => :sign_in
  get 'search'        => 'search#index',        :as => :search
  
  mount Forem::Engine, :at => "/"
  
  root :to => "forums#index"
end
