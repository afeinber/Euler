class ProbTen
  def self.primes_below(numbah)
    #makes an array of all the primes
    the_flags = Array.new(numbah, true)
    #1 is not prime
    the_flags[1] = false
    #For each number in the array less than the sqrt of numbah
    #Note that this is because we would have seen it alredy
    #if it were greater than the sqrt
    (2..Math.sqrt(numbah)).each do |i|
      # we only need to look in fact at PRIMES less than the sqrt of num,
      # because we also would have seen it already
      if the_flags[i]
        mark(the_flags, i)
      end
    end
  return the_flags.each_with_index.reduce(0) do |sum, (val, ind)|
    if val
      sum + ind
    else
      sum
    end
  end
  end

  def self.mark(flags, index)
    (index*2..flags.length).step(index) do |i|
      flags[i] = false
    end
  end
end
