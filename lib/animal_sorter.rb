class AnimalSorter
  attr_reader :animals, :sorted
  
  def initialize(animals)
    @animals = animals
    @sorted = [[],[]]
  end
  
  def to_a
    animals.each_with_index do |animal, index|
      index.even? ? sorted[0] << animal : sorted[1] << animal
    end
    
    sorted
  end
end