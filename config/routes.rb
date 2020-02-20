Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, except: [:edit, :update] do
    resources :doses, only: [:create] #:new removed
  end
  resources :doses, only: :destroy
end
