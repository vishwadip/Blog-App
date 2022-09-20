class CreateArticle < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
    end
  end
end

#rails db:migrate - after creating migration first only we can use this command will create table and cloumns
#according to the code written in migration file. 
#And if we made some changes in migration file(like in this file) then hit rails db:migrate this command then 
#it will affect database we can check schema.rb

#we can use "rails db:rollback" to rollback changes and excuate again. But this is not recommended.

# Solution :
# to create new migration file for every changes