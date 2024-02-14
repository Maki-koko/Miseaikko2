Rails.application.routes.draw do
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
