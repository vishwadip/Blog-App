class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum:6, maximum:100} #to don'100 let save article in db without title
    validates :description, presence: true, length: {minimum:10, maximum:300} #length - for length validation
end

#Ra300 Console -
#To communicate with database

#You can test out your connection to the articles table by typing the following command from within your rails console:
#Article.all

#quieries on Console :

#Article.create(title:"First Article",description:"Content of first article") - this creates article with given data

#article = Article.new - creates object of Article 
#after doing this article will have everything nil

# we can set data also
#article.title - "second article"
 
#Even After setting we need to do save 
#article.save - this will save data in db

#To find -
#Article.find(1)
#Article.first
#Article.last

#to get 
#article=Article.find(2)
#article.title - to get title
#article.title="3rd Article" - to edit the article

#To destroy -
#article.destroy

#to see exect error on rails console -
#article.error.full_messages - 
