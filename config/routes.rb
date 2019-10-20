Rails.application.routes.draw do

  # post 'user_token' => 'user_token#create'

  # rails api
  namespace :api do
    namespace :v1 do
      # # only needed for APIs so move it here
      post 'user_token' => 'user_token#create'
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
