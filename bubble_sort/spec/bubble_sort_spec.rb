
require './lib/bubble_sort'

describe BubbleSort do
  subject { BubbleSort.new }

  describe '#bubble_sort' do
    
    it 'works with empty and one element lists' do
      expect(subject.bubble_sort([])).to eql([])
      expect(subject.bubble_sort([1])).to eql([1])
      expect(subject.bubble_sort([2])).to eql([2])
      expect(subject.bubble_sort([])).to eql([])
    end

    it 'works with two elements lists' do
      expect(subject.bubble_sort([1,2])).to eql([1,2])
      expect(subject.bubble_sort([2,1])).to eql([1,2])
      expect(subject.bubble_sort([1,1])).to eql([1,1])
    end
    
    it 'works with three elemets' do
      expect(subject.bubble_sort([3,2,1])).to eql([1,2,3])
    end

    it 'works with small positive shift in range' do
        expect(subject.bubble_sort([4,3,78,2,0,2])).to eql([0,2,2,3,4,78])
    end
    
  end
end