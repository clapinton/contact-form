Rails.application.routes.draw do

  root to: 'static_pages#index'

  namespace :api, defaults: {format: :json} do 
    resources :messages, only: [:index, :create]
  end

end
