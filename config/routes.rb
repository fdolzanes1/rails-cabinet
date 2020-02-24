Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"
  get 'welcome/index'
  resources :docs

  authenticated :user do 
    root "docs#index", as: "autheticated_root"
  end
  
end
