Rails.application.routes.draw do

  devise_for :users
  # rails api
  namespace :api do
    namespace :v1 do
      post :auth, to: "authentication#create"
      resources :locations do
        resources :recordings 
      end

    end
  end

  # standard rails
  resources :locations do
    resources :recordings 
  end
  
end
