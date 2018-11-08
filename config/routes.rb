Rails.application.routes.draw do
  get '/welcome' => 'welcome#index'
  get '/about_us' => 'welcome#about_us'
  get '/contacts' => 'welcome#contacts'
  get '/no_access' => 'welcome#no_access'
  get '/feedback' => 'message#feedback', as: :feedback
  get '/feedback/new' => 'message#new'
  get '/index' => 'user#index'
  get '/user/:id' => 'user#show', as: :user_id
  delete '/user/:id' => 'user#destroy'
  get '/signup' => 'user#new'
  resources :user
  post '/users' => 'user#create'
  resources :message
  post '/feedback' => 'message#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  post '/user/:user_id/payments' => 'payment#create', as: :pay_create
  resources :user do
    resources :payments
  end
  delete '/user/:user_id/payments.:id' => 'payment#destroy'
end
