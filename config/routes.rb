Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles
  root 'welcome#index'
  get "articles" => "articles#show"
  get "articles" => "articles#index"

  resources :articles do
  resources :comments
  end
end