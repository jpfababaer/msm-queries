#1 Navigate the initial files connected to the homepage web: app/controllers/misc_controller.rb AND app/views/misc_templates/home.html.

#2 We will use a different feature of ActiveRecord, called "Migrations": generate the necessary SQL to create the tables in the first place. 

#3 Using ANOTHER bash prompt, utilize "migrations" by copy/pasting:

# rails generate model movie title:string year:integer duration:integer description:text image:string director_id:integer

# the command above WRITES + CREATES the files necessary to create the model + table -> SEARCH movie.rb for #4

#7 Copy/paste the rest of the SQL commands in order to create the other 3 databases: director, actor, character.

# Here are the commands:
# rails generate model director name:string dob:date bio:text image:string
# rails generate model actor name:string dob:date bio:text image:string
# rails generate model character name:string actor_id:integer movie_id:integer

#8 Remember to run "rake db:migrate". This will create the tables that haven't been created previously. 

#9 Run one last command: rake sample_data -> This will populate the tables with some data Raghu already scrapped for us. 

Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  #10 Now we can start creating the webpage. "Index" is a conventional name for an action that displays a list of records from the table. -> SEARCH directors_controller.rb
  get("/directors", { controller: "directors", action: "index"})

  #16 Now we try to build the "Show details" <a> tag with another .get() URL. "show" is the conventional name for :action that SHOWS details. Now follow the flow. -> SEARCH directors_controller.rb for #17
  get("/directors/:the_id", { controller: "directors", action: "show"})


end
