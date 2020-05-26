Rails.application.routes.draw do
  root to: "languages#index"
  resources :languages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
