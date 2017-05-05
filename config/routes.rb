Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'show', to: 'waypoints#index'

  namespace :api do
    namespace :v1, constraints: { format: 'json' }  do
      post 'gps', to: 'waypoints#create'
    end
  end
end
