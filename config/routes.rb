Rails.application.routes.draw do
  resources :students
  resources :programs
  resources :courses
  resources :projects
end
