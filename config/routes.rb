Rails.application.routes.draw do

  root :to => 'welcome#index'

  resources :welcome, only: [:index]


  resources :products do
    get 'search', on: :collection
    resources :reviews
  end

end
