Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :projects
  resources :user_projects
  resources :project_categories

  post "/likes", to: "users#likes"
end
