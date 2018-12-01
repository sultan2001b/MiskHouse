Rails.application.routes.draw do
  resources :students
  resources :programs
  resources :courses
  resources :projects
  root "pages#home"
end
