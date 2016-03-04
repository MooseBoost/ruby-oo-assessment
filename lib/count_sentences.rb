class String
  def count_sentences
    array = self.split(/[.?!]/)
    array.length
  end
end