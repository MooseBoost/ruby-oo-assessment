class Array
  
  def symbol_roundup
    symbols = []
    self.each { |i| symbols << i if i.is_a? Symbol }
    
    symbols
  end
  
end
