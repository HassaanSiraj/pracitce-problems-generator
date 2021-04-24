def gcd(a, b)
  return a if b.zero?
  return b if a.zero?

  a, b = a.abs, b.abs
  while b != 0
    a, b = b, a % b
  end
  a
end


