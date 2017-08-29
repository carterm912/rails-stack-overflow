Rails.application.routes.draw do
  devise_for :users
  # get 'questions/:id/answers/new'

  resources :questions do
    resources :answers
  end

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
