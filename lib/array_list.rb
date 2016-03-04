class Array
  def list
    count = 0
    self.map { |i| count += 1; "#{count}. #{i}" }
  end
  
  def make_list
    list
  end
end
