Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :new, :edit, :create, :update]
  resources :projects, only: [:index, :show, :new, :create]
  resources :user_projects, only: [:index, :new, :show, :create, :destroy]
  resources :project_categories, only: [:index, :show]

  post "/like_project/:project_id", to: "projects#like", as: "like_project"
  post "/like_user/:user_id", to: "users#like", as: "like_user"
end
