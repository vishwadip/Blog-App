class ArticlesController < ApplicationController

    def show
        #article - this is normal article variable - accessible in this class only
        #To access article in whole project need to make it instance variable
        #by adding @ variable becomes instance variable
        #byebug - add this for debugging it pauses server there  
        @article = Article.find(params[:id]) #params[:id] - params is parameters - this is to access data from url
                                             #uses hash data structure - id hash will be passed here 
    end
    
    def index
        @article = Article.all
    end

    def new
        @article=Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        #render plain:params[:article]  #render plains means - display on browser in plain format
        @article=Article.new(params.require(:article).permit(:title, :description))
        #params.require(:article).permit(:title,:decription) - we need params.require to provide strong security - we are telling we require key article and permit title and description
        #render plain: @article - this will render object hashcode
        #render plain: @article.inspect - this will render all info of article object 
         #here after saving we want to redirect to the same article which is been created for we are using 
        #@article_path(@article) - here it gets path of article using @article

        if @article.save #article will save in db  only after saving it.
            flash[:notice]="Article was created successfully" #flash is a hash which is used to give messages to the user
            #:notice - which give any notice and :alert - for any wrong going
            redirect_to article_path(@article) #same as this redirect_to @article
        else 
            render 'new' #here 'new' - is new erb template //this will run if article doesn't save in db
            #and we will have access of @article which has info of what went wrong
        end
    
    end
    
    def update
        @article =Article.find(params[:id])
        #below we are whitelisting title and description
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice] ="Article was updated successfully."
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article =Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
end