class ParenthesesMatcher
  def self.match(str, idx)
    other_index = idx + str.scan('(').count + 1
    if str == '()' && idx == 0
      1
    elsif str[other_index].nil?
      -1
    else
      other_index
    end
  end

  def self.even_parens?(str)
    str.scan(')').count == str.scan('(').count
  end
end
