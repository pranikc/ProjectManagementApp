Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :projects
  resources :user_projects
  resources :project_categories

  post "/like_project/:project_id", to: "projects#like", as: "like_project"
  post "/like_user/:user_id", to: "users#like", as: "like_user"
end
