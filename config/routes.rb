Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
  get '/students', to: 'students#index'
  get '/students/new', to: 'students#new'
  post '/students/new', to: 'students#create'



end
