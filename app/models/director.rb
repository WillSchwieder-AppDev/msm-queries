class Director < ApplicationRecord
  
  def directors_youngest
    @query = Director.minimum({:dob})

    render({ :template => "directors_templates/directors_youngest.html.erb"})
  end

end