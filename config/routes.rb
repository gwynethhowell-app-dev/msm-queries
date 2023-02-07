Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})
  get("/directors/eldest", { :controller => "directors", :action => "old"})
  get("/directors/youngest", { :controller => "directors", :action => "young"})

  get("/directors/:an_id", { :controller => "directors", :action => "director_details"})

  get("/movies", { :controller => "movies", :action => "index_films"})
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details"})

end
