Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "application", :action => "directors" })
  get("/directors/youngest", { :controller => "director", :action => "directors_youngest" })
  
end
