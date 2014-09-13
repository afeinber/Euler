 def largest_pal
  m = 1
  999.downto(100) do |i|
    i.downto(100) do |j|
      if is_palindrome?(i * j)
        if i * j > m
          m = i * j
        end
      end
    end
  end
  m
end

def is_palindrome?(num)
  i = 0
  num = num.to_s.chars
  while i <= num.size / 2
    return false if num[i] != num[-1-i]
    i+=1
  end
  return true
end

puts largest_pal
