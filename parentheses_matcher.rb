class ParenthesesMatcher
  def self.match(str, idx)
    other_index = idx + str.length / 2
    if even_parens?(str) && !str[other_index].nil?
      other_index
    else
      -1
    end
  end

  def self.even_parens?(str)
    str.scan(')').count == str.scan('(').count
  end
end
