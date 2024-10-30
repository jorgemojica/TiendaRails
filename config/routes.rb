Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Consultar rutas: http://127.0.0.1:3000/rails/info/routes
  # Tipo de Petición    Ruta                Controlador(NombreControlador#Método)   Nombre de la Ruta (Helper)
  # get                 '/products/new',    to: 'products#new',                     as: :new_product
  # delete '/products/:id', to: 'products#destroy'
  # patch '/products/:id', to: 'products#update'
  # post '/products', to: 'products#create'
  # get '/products/new', to: 'products#new', as: :new_product
  # get '/products', to: 'products#index'
  # get '/products/:id', to: 'products#show', as: :product
  # get '/products/:id/edit', to: 'products#edit', as: :edit_product

  # Las rutas anteriores pueden ser reemplazadas por esta línea dejando como ruta raíz la página que muestra todos los productos
  # resources crea siete rutas con los verbos HTTP por defecto
  resources :products, path: '/products'

  get '/categories', to: 'categories#index'
  delete '/categories/:id', to: 'categories#destroy'
  get '/categories/new', to: 'categories#new', as: :new_category
  post '/categories', to: 'categories#create'
  patch '/categories/:id', to: 'categories#update'
  get '/categories/:id', to: 'categories#show', as: :category
  get '/categories/:id/edit', to: 'categories#edit', as: :edit_category

  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
  end

end
