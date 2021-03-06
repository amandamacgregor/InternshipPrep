Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # will route to todos controller
    root to: "todos#index"
    
    resources :todos, only: [:index, :new, :create] do
        resource :completion, only: [:create, :destroy]
  end
    
    resource :session, only: [:new, :create]


end
