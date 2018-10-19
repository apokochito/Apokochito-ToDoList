Rails.application.routes.draw do
  devise_for :users
  resources :todo_lists do
    resources :todo_items
    #resources :users, only: :index
  end
  
  root "todo_lists#index"

  require 'sidekiq/web'
  require 'sidekiq/cron/web'
  mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
