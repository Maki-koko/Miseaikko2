Rails.application.routes.draw do

  root to: 'user/homes#top'
    get "/role" => 'user/homes#role'

  devise_for :admin, controllers: {
    registrations: "admin/registrations",
    sessions: 'admin/sessions'
  }
  
  devise_for :users, controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    get "/admin" => 'admin/homes#top'

  namespace :admin do
    resources :users, only: [:index, :show, :update]
    resources :reports, only: [:index, :update]
    resources :records, only: [:index, :show, :update]
    resources :notes, only: [:index, :show, :update]
    resources :comments, only: [:index, :show, :update]
  end
  
  scope module: :user do
    get 'users/quit' => "users#quit"
    patch 'users/withdraw' => 'users#withdraw'
    
    resources :users, only: [:show, :update] do
      member do
        get :follows, :followers
      end
      resource :follow_relationships, only: [:create, :destroy]
    end

    resources :notes do
      resource :note_favorites, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
    end

    resources :records, only: [:new, :create, :update, :destroy] do
     resource :record_favorites, only: [:create, :destroy]
    end

    resources :reports, only: [:new, :create]
  end

end
