Rails.application.routes.draw do
  
  root "demo#index"
  
  resources :demo, only: :index

  # fallback
  # match ':controller(/:action(/:id))', :via => :get
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
