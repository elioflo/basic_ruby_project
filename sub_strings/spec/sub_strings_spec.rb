# frozen_string_literal: true

# spec/caesar_spec.rb
require './lib/sub_strings.rb'

describe SubStrings do
  subject { SubStrings.new }
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  describe '#substrings' do
    
    it 'works with a word' do
        expect(subject.substrings('below', dictionary)).to eql({ "below" => 1, "low" => 1 })
    end
    
    it 'works with a text' do
        expect(subject.substrings("Howdy partner, sit down! How's it going?", dictionary)).to eql({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
    end

  end
end