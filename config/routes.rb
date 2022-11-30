Rails.application.routes.draw do
  root 'resources#index'

  post '/resources/create', to: 'resources#create', as: 'resources_create'
end
