class Meal
  attr_reader :choice
  
  def initialize(choice="meat")
    @choice = choice
  end
end