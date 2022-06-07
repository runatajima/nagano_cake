Rails.application.routes.draw do
  root "public/homes#top"
  namespace :public  do
    # get "/"=> "homes#top"
    get "about"=> "homes#about"
  end

  devise_for :admin, controllers: {
  sessions:      'admin/sessions',
  passwords:     'admin/passwords',
  registrations: 'admin/registrations'
}



devise_for :public, controllers: {
  sessions:      'public/sessions',
  passwords:     'public/passwords',
  registrations: 'public/registrations'
}



 namespace :admin do
    get "/"=> "homes#top"
     resources :genres, only: [:index, :create, :edit, :update]
     resources :items, only: [:show, :index, :new, :create, :edit, :update]
     resources :customers,only: [:index,:show,:edit,:update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
