Rails.application.routes.draw do

scope "(:locale)", locale: /ru|en/ do

    get '/welcome' => 'welcome#index'
    get '/about_us' => 'welcome#about_us'
    get '/contacts' => 'welcome#contacts'
    get '/no_access' => 'welcome#no_access'
    get '/admin_page'=> 'welcome#admin_page'
    get '/messages' => 'messages#index', as: :feedback
    get '/messages/:id' => 'messages#show'
    get '/message/new' => 'messages#new'
    resources :messages
    get '/index' => 'user#index'
    get '/user/:id' => 'user#show', as: :user_id
    delete '/user/:id' => 'user#destroy'
    get '/signup' => 'user#new'
    get '/message/signup' => 'user#new'
    resources :user
    post '/users' => 'user#create'
    post '/messages' => 'message#create'
    get '/login' => 'sessions#new'
    get '/message/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'
    post '/user/:user_id/payments' => 'payments#create', as: :pay_create
    resources :user do
      resources :payments
    end
    delete '/user/:user_id/payments.:id' => 'payments#destroy'
    delete '/:user_id/user/:payments_id/payments' => 'payments#destroy'
    resources :user, only: :index
    resources :payments, only: :index
    resources :transfer_types
    resources :transfer_categories
    post 'transfer_types/new' => 'transfer_types#create'

  end
end
