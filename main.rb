require_relative 'animal'
require_relative 'animal_collection'

all_animals = AnimalCollection.new([
                                     Animal.new('monkey', 3, 'male'),
                                     Animal.new('squirrel', 5, 'female'),
                                     Animal.new('monkey', 1, 'male'),
                                     Animal.new('monkey', 11, 'male')
                                   ])

filtered_animals = all_animals
                   .monkeys
                   .age_less_than(5)
                   .males

all_animals_table = all_animals.to_table
filtered_animals_table = filtered_animals.to_table

stylized_all_animals_table = "\e[1mAll Animals:\e[0m\n#{all_animals_table}"
stylized_filtered_animals_table = "\e[1mFiltered Animals:\e[0m\n#{filtered_animals_table}"

puts stylized_all_animals_table
puts stylized_filtered_animals_table
