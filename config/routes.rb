Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
    get 'users/edit'
    get 'users/update'
  end
  namespace :admin do
    get 'reports/index'
    get 'reports/update'
  end
  namespace :admin do
    get 'records/index'
    get 'records/show'
    get 'records/update'
  end
  namespace :admin do
    get 'notes/index'
    get 'notes/show'
    get 'notes/update'
  end
  namespace :admin do
    get 'comments/index'
    get 'comments/show'
    get 'comments/update'
  end
  namespace :user do
    get 'users/index'
    get 'users/show'
    get 'users/update'
    get 'users/quit'
    get 'users/withdrow'
    get 'users/follows'
    get 'users/followers'
  end
  namespace :user do
    get 'tag_relationships/create'
    get 'tag_relationships/destroy'
  end
  namespace :user do
    get 'folloow_relationships/create'
    get 'folloow_relationships/destroy'
  end
  namespace :user do
    get 'record_favorites/create'
    get 'record_favorites/destroy'
  end
  namespace :user do
    get 'note_favorites/create'
    get 'note_favorites/destroy'
  end
  namespace :user do
    get 'homes/top'
    get 'homes/role'
  end
  namespace :user do
    get 'records/create'
    get 'records/update'
    get 'records/destroy'
  end
  namespace :user do
    get 'comments/create'
    get 'comments/destroy'
  end
  namespace :user do
    get 'notes/index'
    get 'notes/new'
    get 'notes/create'
    get 'notes/show'
    get 'notes/edit'
    get 'notes/update'
    get 'notes/destroy'
  end
  devise_for :admins, controllers: {
    registrations: "admin/registrations",
    sessions: 'admin/sessions'
  }
  
  devise_for :users, controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
