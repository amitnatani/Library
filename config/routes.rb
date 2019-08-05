Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'authenticate', to: 'authentication#authenticate'

  resources :books do
    collection do
      get :books_by_query
    end
  end
end
