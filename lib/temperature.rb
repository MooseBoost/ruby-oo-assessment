class Temperature
  attr_reader :temp
  attr_accessor :level
  
  def initialize(temp)
    @temp = temp
    @level = 'comfortable'
  end
  
  def status
    if temp > 21
      self.level = 'hot'
    elsif temp < 18
      self.level = 'cold'
    else
      self.level
    end
  end  
  
end