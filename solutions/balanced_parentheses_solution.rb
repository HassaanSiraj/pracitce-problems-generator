def balanced_parentheses?(str)
  balance = 0
  str.each_char do |ch|
    if ch == '('
      balance += 1
    elsif ch == ')'
      balance -= 1
      return false if balance < 0
    end
  end
  balance.zero?
end


