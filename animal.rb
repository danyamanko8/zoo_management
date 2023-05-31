# frozen_string_literal: true

class Animal
  attr_reader :species, :age, :sex

  def initialize(species, age, sex)
    @species = species
    @age = age
    @sex = sex
  end
end
