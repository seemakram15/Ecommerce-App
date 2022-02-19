Rails.application.routes.draw do
  
  root 'wellcome#index', as: :authenticated_root
  devise_for :users
  resources :users do
    resources :products
  end
  scope :product do
    resources :categories, only: [:show, :create]
  end
end
