Rails.application.routes.draw do

  # rails api
  namespace :api do
    namespace :v1 do

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
