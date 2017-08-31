Rails.application.routes.draw do
  devise_for :admin

  resources :events

  root 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :messages, only: [] do
    collection do
      post 'send'
      post 'reply'
    end
  end
end