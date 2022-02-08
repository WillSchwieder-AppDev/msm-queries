class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "misc_templates/home" })
  end

  def directors
    @directors = Director.directors

    render({ :template => "directors_templates/directors.html.erb" })
  end

  def directors_youngest
    @director_young_date = Director.directors_youngest_date
    @director_young_name = Director.directors_youngest_name
    @director_young_id = Director.directors_youngest_id

    @result = @director_young

    render({ :template => "directors_templates/directors_youngest.html.erb" })
  end

  def directors_eldest
    @director_eldest_date = Director.directors_eldest_date
    @director_eldest_name = Director.directors_eldest_name
    @director_eldest_id = Director.directors_eldest_id

    @result = @director_eldest

    render({ :template => "directors_templates/directors_eldest.html.erb" })
  end

  def directors_details
    @director_id = params.fetch("id")
    @directors = Director.all
    @films = Movie.all

    render({ :template => "directors_templates/directors_details.html.erb" })
  end

  def movies
    @films = Movie.all
    @directors = Director.all

    render({ :template => "movie_templates/movies.html.erb" })
  end

  def movies_details
    @film_id = params.fetch("id")
    @films = Movie.all
    @directors = Director.all


    render({ :template => "movie_templates/movies_details.html.erb" })
  end

  def actors
    @actors = Actor.all
    @movies = Movie.all

    render({ :template => "actors_templates/actors.html.erb" })
  end

  def actors_details
    @actor_id = params.fetch("id")
    @actors = Actor.all
    @films = Movie.all
    @characters = Character.all
    @directors = Director.all


    render({ :template => "actors_templates/actors_details.html.erb" })
  end
end
