class DirectorsController < ApplicationController 
  def index 
    render({ :template => "director_templates/index.html.erb"})
  end 

  def old 
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "director_templates/eldest.html.erb"})
  end
  def young
    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    render({ :template => "director_templates/youngest.html.erb"})
  end
  def director_details 
      the_id = params.fetch("an_id")
      @the_director = Director.where({ :id => the_id }).at(0)
      render({ :template => "director_templates/show.html.erb"})
  end
end 
