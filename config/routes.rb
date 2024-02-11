#1 Navigate the initial files connected to the homepage web: THIS FILE + app/controllers/misc_controller.rb + app/views/misc_templates/home.html.

#2 We will use a different feature of ActiveRecord, called "Migrations": this generates the necessary SQL to create the tables in the first place. 

#3 Using ANOTHER bash prompt, utilize "migrations" by copy/pasting the command below:

# rails generate model movie title:string year:integer duration:integer description:text image:string director_id:integer

# the command above WRITES + CREATES the files necessary to create the Model file + table database -> SEARCH app/models/movie.rb for #4

#7 Copy/paste the rest of the SQL commands in order to create the other 3 databases: director, actor, character.

# Here are the commands:

# rails generate model director name:string dob:date bio:text image:string
# rails generate model actor name:string dob:date bio:text image:string
# rails generate model character name:string actor_id:integer movie_id:integer

#8 Run the command: rake db:migrate 
#This will create the tables that haven't been created previously made. 

#9 Run one last command: rake sample_data 
#This will populate the tables with some data Raghu already scrapped IMDB for this data for us. 

Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  #10 Now we can start creating the webpage. "Index" is a conventional name for an action that displays a list of records from the table. -> SEARCH directors_controller.rb
  get("/directors", { controller: "directors", action: "index"})

  #21 When dealing with URLs that match, i.e. /directors/:the_id and /directors/youngest, it is IMPORTANT to place the STATIC URL ABOVE the dynamic URL. If NOT, we would never get to the /directors/youngest URL because it will try to run /directors/:the_id
  get("/directors/youngest", {controller: "directors", action: "junior"})

  get("/directors/eldest", {controller: "directors", action: "senior"})

  #16 Now we try to build the "Show details" part with <a> tag + another .get() URL. "show" is the conventional name for :action that SHOWS details. Remember to use dynamic URL. The <a> created from list.html/erb dynamically determines the route. -> SEARCH directors_controller.rb for #17
  get("/directors/:the_id", { controller: "directors", action: "show"})

  #Movies section:
  get("/movies", { controller: "movies", action: "index"})
  get("/movies/:the_id", { controller: "movies", action: "show"})


  #Actors section:
  get("/actors", { controller: "actors", action: "index"})
  get("/actors/:the_id", { controller: "actors", action: "show"})

end
