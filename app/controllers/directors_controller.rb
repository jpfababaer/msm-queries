#11 Create, inherit, and then define the :action we want inside of it. Connect it to the html.erb file -> SEARCH list.html.erb

class DirectorsController < ApplicationController

  def index
    render ({template: "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")

    #17 This will return a RELATIONS (i.e. Array-like structure). To utilize the Instance within it, we must use .at() to utilize the row. After this, we can use the @the_director and utilize necessary HTML to match the target. SEARCH details.html.erb for #18
    @the_director = Director.where({ :id => the_id}).at(0)



    render({template: "director_templates/details"})
  end
end
