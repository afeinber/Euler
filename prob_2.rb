def sum_even_fibs
  a = 1
  b = 1
  count = 0
  while b < 4_000_000
    count += b if b.even?
    c  = b
    b = a + b
    a = c

  end
  count
end

puts sum_even_fibs
