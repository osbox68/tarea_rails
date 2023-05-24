Rails.application.routes.draw do
  resources :colaborators do 
    member do 
      get "otravista"
    end

    collection do 
      get "search"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "colaborators#index"
end
