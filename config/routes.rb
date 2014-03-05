ModernIdx::Application.routes.draw do

  resource :quote, only: [:show, :create], controller: :quote

  root to: 'home#index'
end
