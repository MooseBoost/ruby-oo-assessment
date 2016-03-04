class Greeting
  attr_reader :time
  
  def initialize(time)
    @time = time
  end
  
  def say
    if morning?
      "Good Morning!"
    elsif afternoon?
      "Good Afternoon!"
    elsif night?
      "Good Night!"
    else
      "Jet lagged. I don't know what time it is anymore."
    end
  end
  
  def morning?
    (6..11) === time
  end
  
  def afternoon?
    (12..19) === time
  end
  
  def night?
    (0..5) === time || (20..23) === time
  end
  
end

