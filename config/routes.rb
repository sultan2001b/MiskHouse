Rails.application.routes.draw do
  devise_for :users
  resources :students
  resources :programs
  resources :courses
  resources :projects
  root "pages#home"
end
