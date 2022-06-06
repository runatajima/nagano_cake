Rails.application.routes.draw do
  root "publics/homes#top"
  namespace :publics  do
    # get "/"=> "homes#top"
    get "about"=> "homes#about"
  end

  namespace :admins do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}



devise_for :publics, controllers: {
  sessions:      'publics/sessions',
  passwords:     'publics/passwords',
  registrations: 'publics/registrations'
}



 namespace :admins do
    get "/"=> "homes#top"
     resources :genres, only: [:index, :create, :edit, :update]

     resources :items, only: [:show, :index, :new, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
