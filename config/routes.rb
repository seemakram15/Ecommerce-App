Rails.application.routes.draw do
  
  root 'wellcome#index', as: :authenticated_root
  devise_for :users
  resources :users do
    resources :products do
      member do
      delete :delete_product
      end
    end
  end
  scope :product do
    resources :categories, only: [:create, :destroy]
  end
end
