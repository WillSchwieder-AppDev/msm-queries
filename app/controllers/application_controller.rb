class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def directors


    render({ :template => "directors_templates/directors.html.erb"})
  end

  
end
