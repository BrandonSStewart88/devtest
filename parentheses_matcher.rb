class ParenthesesMatcher
  def self.match(str, idx)
    if even_parens?(str)
      other_index = idx + str.length / 2
      other_index
    end
  end

  def self.even_parens?(str)
    str.scan(')').count == str.scan('(').count
  end
end
