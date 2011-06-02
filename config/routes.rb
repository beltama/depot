Depot::Application.routes.draw do
  resources :abouts

  get 'admin' => 'admin#index'
  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  scope '(:locale)' do
    resources :users
    resources :orders
    resources :line_items
    resources :carts
    resources :products do
      get :who_bought, :on => :member
    end
    # You can have the root of your site routed with "root"
    # just remember to delete public/index.html.
    # root :to => "welcome#index"
    root :to => 'store#index', :as => 'store'
  end
end
