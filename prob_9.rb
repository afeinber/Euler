def get_triple(numbah)
  #strategy: we know that a is always less than b
  #so we only look at such a's, but overall just do iteration.
  #this is O(n**2) for sure but a good O(n**2).
  (1..numbah).each do |a|
    (a..numbah).each do |b|
      if a**2 + b**2 == ((numbah - (a+b))**2)
        puts "#{a * b * (numbah - (a+b))}"
        return
      end
    end
  end
end

get_triple(1000)
