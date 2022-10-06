Rails.application.routes.draw do
  root "pages#home"
  #get "about" to "pages#about"
  resources :articles, only:[:show, :index, :new, :create, :edit, :update, :destroy] #resources :articles - this line makes all routes and we want to 
                                    #make only one hence only:[:show]

                                    
end


#Rest - Representataional State Transfer - mapping HTTP verbs 
              #(get, post, put/patch and delete) to crud actions

#Resources provides REST-ful routes to rails resources(e.g article)