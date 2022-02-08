Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "application", :action => "directors" })
  get("/directors/youngest", { :controller => "application", :action => "directors_youngest" })
  get("/directors/eldest", { :controller => "application", :action => "directors_eldest" })
  get("/directors/:id", { :controller => "application", :action => "directors_details" })
  get("/movies", { :controller => "application", :action => "movies" })


  get("/movies/:id", { :controller => "application", :action => "movies_details" })
  
  
end
