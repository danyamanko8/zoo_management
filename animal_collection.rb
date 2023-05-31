# frozen_string_literal: true

require 'terminal-table'
require 'colorize'

class AnimalCollection
  attr_reader :animals

  HEADINGS = ['Animal Species', 'Age', 'Sex'].freeze

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
      table.headings = HEADINGS.map { |heading| heading.colorize(:blue).bold }
      table.style = { all_separators: true }
      animals.each do |animal|
        table.add_row([animal.species.colorize(:red), animal.age, animal.sex.colorize(:green)])
      end
    end
  end
end
