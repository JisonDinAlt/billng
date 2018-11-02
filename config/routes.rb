Rails.application.routes.draw do
  get '/welcome' => 'welcome#index'
  get '/no_access' => 'welcome#no_access'
  get '/index' => 'user#index'
  get '/user/:id' => 'user#show', as: :user_id
  delete '/user/:id' => 'user#destroy'
  get '/signup' => 'user#new'
  resources :user
  post '/users' => 'user#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  post '/user/:id/payments' => 'payment#create', as: :pay_create
  resources :user do
    resources :payments
  end
end
