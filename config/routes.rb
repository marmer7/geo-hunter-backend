Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :locations, only: [:index, :create]
      resources :quests, only: [:index, :create]
      resources :users, only: [:show, :create]
    end
  end
end
