class ParenthesesMatcher
  def self.match(str, idx)
    other_index = create_other_index(str, idx)
    if str == '()' && idx == 0
      1
    elsif str[other_index].nil?
      -1
    else
      other_index
    end
  end

  def self.create_other_index(str, idx)
    idx + 1 + (str.scan('(').count - idx)
  end

  def self.even_parens?(str)
    str.scan(')').count == str.scan('(').count
  end
end
