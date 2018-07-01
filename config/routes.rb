Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  get '/find', to: 'organisations#find'
  post '/request-data', to: 'form#show'
  post '/preview-email', to: 'form#preview'
  post '/send-email', to: 'form#send_email'

  get '/about', to: 'about#about'
end
