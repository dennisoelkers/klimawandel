Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :devices
  resources :rooms do
    resource :temperature
  end
end
