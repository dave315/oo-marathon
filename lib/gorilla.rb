class Gorilla
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} got a bad feeling about this..."
  end
end

# class Animal
#   attr_reader :name
#
#   def initialize(name)
#     @name = name
#   end
# end
#
# class Gorilla < Animal
#   def speak
#     "#{name} got a bad feeling about this..."
#   end
# end
#
# class Fox < Animal
#   def speak
#     "Ring-ding-ding-ding-dingeringeding!"
#   end
# end
