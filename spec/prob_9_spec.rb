require_relative '../prob_9'
describe ProbNine do
  describe '#get_triple' do
    it 'gets the answer for 25' do
      expect(ProbNine.get_triple(12)).to eq 60
    end
  end
end
