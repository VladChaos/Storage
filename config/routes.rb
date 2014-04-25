Aaa::Application.routes.draw do
  resources :children do
  	resources :mothers, :welcome
  end


  resources :mothers do
  	resources :children, :welcome
  end
  
  resources :bouqets
  
  get "welcome/index"
  root :to => 'welcome#index'
end
