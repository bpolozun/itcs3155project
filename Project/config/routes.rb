Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'main/index'
  resources :groups do
    resource :applicants
  end
  
  get "/sports", to: "groups#sports", as: "sports"
  get "/exsports", to: "groups#exsports", as: "exsports"
  get "/academic", to: "groups#academic", as: "academic"
  get "/online", to: "groups#online", as: "online"
  get "/music", to: "groups#music", as: "music"
  root 'main#index'
end
