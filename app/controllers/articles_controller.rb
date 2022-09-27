class ArticlesController < ApplicationController

    def show
        #article - this is normal article variable - accessible in this class only
        #To access article in whole project need to make it instance variable
        #by adding @ variable becomes instance variable
        #byebug - add this for debugging it pauses server there  
        @article = Article.find(params[:id]) #params[:id] - params is parameters - this is to access data from url
                                             #uses hash data structure - id hash will be passed here 
    end
    
end