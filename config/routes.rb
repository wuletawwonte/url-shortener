Rails.application.routes.draw do
  root 'resources#index'

  post '/resources/create', to: 'resources#create', as: 'resources_create'
  get '/url/:short_url', to: 'resources#bounce', as: 'resources_bounce'
end
