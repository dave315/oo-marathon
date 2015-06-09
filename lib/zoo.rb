class ZooAtCapacity < StandardError; end

class Zoo
  attr_reader :cages, :employees

  def initialize(name, num_cages = 10)
    @cages = []
    @employees = []
    num_cages.times { @cages << Cage.new }
  end

  def add_employee(employee)
    @employees << employee
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        return
      end
    end
    raise ZooAtCapacity
  end

  def visit
    greeting = ""
    @employees.each do |emp|
      greeting += "#{emp.greet}\n"
    end
    @cages.each do |cage|
      greeting += "#{cage.animal.speak}\n" if !cage.empty?
    end
    greeting
  end
end
