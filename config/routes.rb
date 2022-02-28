Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
  resources :comments

  root 'posts#index'
  end
  patch 'posts/:id/likes', to: 'posts#likes', as: :likes

end
