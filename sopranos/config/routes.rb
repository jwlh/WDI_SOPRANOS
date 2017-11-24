Rails.application.routes.draw do
  resources :suspects
  resources :questions
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
