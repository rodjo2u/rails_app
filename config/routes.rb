Rails.application.routes.draw do

  root "demo#index"


  resources :demo, only: :hello
  get 'demo/index', to: 'demo#index'
  get 'demo/hello', to: 'demo#hello'
  get 'demo/lynda', to: 'demo#lynda'

  # fallback
  # match ':controller(/:action(/:id))', :via => :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
