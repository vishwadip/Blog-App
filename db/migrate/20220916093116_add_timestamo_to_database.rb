
#we created this migration as we only can execute one migration one time only.
#so to avoid base code sync issue we should create migration for every new changes.

class AddTimestamoToDatabase < ActiveRecord::Migration[5.1]
  def change
      add_column :articles,:created_at,:datetime
      add_column :articles,:updated_at,:datetime
  end
end

# add_column :articles,:created_at,:datetime = add_column - method name, articles-database
#created_at -column name and datetime - datatype
#as name of migration is general so rails did not write any code for that
