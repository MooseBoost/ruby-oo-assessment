class Integer
  def is_between?(min,max)
    ((min+1)...max) === self
  end
end