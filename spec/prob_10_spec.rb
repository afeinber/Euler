require_relative('../prob_10')

describe ProbTen do
  describe '#primes_below' do
    it 'gets the primes below 10' do
      expect(ProbTen.primes_below(10)).to eq 17
    end
  end
end
