Rails.application.routes.draw do
  
  root 'sports_people#index'
  resources :sports_people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
