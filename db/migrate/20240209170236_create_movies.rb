#5 The command we used in step #3 creates the method "change" which is going to allow us to create the table we want. HOWEVER, we must run this method first!

#6 How? run the command: rake db:migrate 

# The command above will run a SQL command + create the "movies" database/table. -> return to routes.rb for #7

class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :duration
      t.text :description
      t.string :image
      t.integer :director_id

      t.timestamps
    end
  end
end
