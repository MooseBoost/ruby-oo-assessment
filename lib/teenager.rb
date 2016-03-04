class Person
  attr_reader :age
  
  def initialize(age)
    @age = age
  end
  
  def is_a_teenager?
    (13..19) === age
  end
end