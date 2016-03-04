class Array
  
  def odds?
    
    self.map do |i|
      i.even? ? false : true if i.is_a? Fixnum
    end
  end
  
end