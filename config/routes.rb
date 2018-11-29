Rails.application.routes.draw do
  resources :programs
  resources :courses
  resources :projects
  
  get "students/new"
  get "students/edit"
  get "students/show"
  get "students/create"
  get "students/update"
  get "students/index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
