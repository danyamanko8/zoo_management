# frozen_string_literal: true

require 'terminal-table'

class AnimalCollection
  attr_reader :animals

  def initialize(animals)
    @animals = animals
  end

  def monkeys
    self.class.new(animals.select { |animal| animal.species == 'monkey' })
  end

  def age_less_than(limit)
    self.class.new(animals.select { |animal| animal.age < limit })
  end

  def males
    self.class.new(animals.select { |animal| animal.sex == 'male' })
  end

  def to_table
    Terminal::Table.new do |table|
      table.headings = ['Animal Species', 'Age', 'Sex']
      table.style = { all_separators: true }
      animals.each do |animal|
        table.add_row([animal.species, animal.age, animal.sex])
      end
    end
  end
end
