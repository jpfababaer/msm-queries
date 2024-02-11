#11 Create class, inherit from Parent class, and then define the method(s) (:action) we want inside of it. Connect the methods to the corresponding html.erb file -> SEARCH list.html.erb

class DirectorsController < ApplicationController

  def index
    render ({template: "director_templates/list"})
  end

  def junior

    render ({template: "director_templates/junior"})
  end

  def senior

    render({template: "director_templates/senior"})
  end



  def show
    the_id = params.fetch("the_id")

    #17 This will return a RELATIONS (i.e. Array-like structure). To utilize the Instance within it, we must use .at() to take it out of the RELATIONS. Only then can we access the data (@the_director) within it.SEARCH details.html.erb for #18
    @the_director = Director.where({ :id => the_id}).at(0)



    render({template: "director_templates/details"})
  end
end
