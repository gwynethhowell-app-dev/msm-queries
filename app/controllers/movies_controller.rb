class MoviesController < ApplicationController 

  def index_films

    render({ :template => "movies_templates/index.html.erb"})
  end 
  def movie_details 
      @the_id = params.fetch("an_id")
      @the_director = Director.where({ :id => @the_id }).at(0)
      @filmography = Movie.where({ :id => @the_id}).at(0)

    render({ :template => "movies_templates/details.html.erb"})
  end 
end
