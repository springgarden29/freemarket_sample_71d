Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get  'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root "items#index"  

  resources :items, only: [:show, :index, :new, :destroy]
  resource :users, only: [:show] do
    get 'logout', to: 'users#logout'
    resources :cards, only: [:new, :index] do
      collection do
      # クレジットカード登録
        # post 'pay', to: 'cards#pay'
      # クレジットカード削除
        # delete 'delete', to: 'cards#delete'
      end
    end
  end
end
#   resource :users, only: [:show] do
#     collection do
#       get "new_login"
#       get "new_session"
#       get "new_user"
#       get "new_address"
#       get "create_address" 
#     end
#   end
# end
