require './lib/stock_picker'

describe StockPicker do
  subject { StockPicker.new }
  describe '#stock_picker' do
    
    it 'works for [a,b] where a < b, return always [0,1]' do
        expect(subject.stock_picker([1,2])).to eql([0,1])
        expect(subject.stock_picker([3,4])).to eql([0,1])
        expect(subject.stock_picker([5,6])).to eql([0,1])
        expect(subject.stock_picker([7,8])).to eql([0,1])
    end
    
    it 'works for a list of prices' do
        expect(subject.stock_picker([17,3,6,9,15,8,6,1,10])).to eql([1,4])
        expect(subject.stock_picker([1,2,3])).to eql([0,2])
        expect(subject.stock_picker([1,2,3,4])).to eql([0,3])
        expect(subject.stock_picker([10,2,3,4])).to eql([1,3])
    end
    
    it ' if there is no good days return -1' do
        expect(subject.stock_picker([9,8,7,6,5,4])).to eql([-1,-1])
    end

  end
end