Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '/users', to: 'users#index'
  #get '/users/:id', to: 'users#show'
  #get '/users/new', to: 'users#new', as: 'new_user'
  #get '/users/:id/edit', to: 'users#edit', as: 'edit_user'

  #post '/users', to: 'users#create'
  #patch '/users/:id', to: 'users#edit'

  resources :users

  resources :projects
  resources :user_projects
  resources :project_categories

  post "/like_project/:project_id", to: "projects#like", as: "like_project"
  post "/like_user/:user_id", to: "users#like", as: "like_user"
end
