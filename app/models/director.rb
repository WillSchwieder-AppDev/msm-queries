class Director < ApplicationRecord
  def self.directors
    @directors = Director.all
  end

  def self.directors_youngest_date
    @max_dob = Director.all.maximum(:dob)
  end

  def self.directors_youngest_name
    @name_youngest = Director.where(:dob => @max_dob).at(0).name
  end

  def self.directors_youngest_id
    @id_youngest = Director.where(:dob => @max_dob).at(0).id
  end

  def self.directors_eldest_date
    @max_dob = Director.all.minimum(:dob)
  end

  def self.directors_eldest_name
    @name_eldest = Director.where(:dob => @max_dob).at(0).name
  end

  def self.directors_eldest_id
    @id_eldest = Director.where(:dob => @max_dob).at(0).id
  end
end
