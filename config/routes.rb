Rails.application.routes.draw do
  resources :classrooms, only: [:index, :show]
  resources :students, only: [:index, :show, :edit, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
