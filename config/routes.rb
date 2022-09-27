Rails.application.routes.draw do
  root "pages#home"
  #get "about" to "pages#about"
  resources :articles, only:[:show] #resources :articles - this line makes all routes and we want to 
                                    #make only one hence only:[:show]

                                    
end
