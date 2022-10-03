class SubStrings

    def substrings text, dictionary
        words = text.downcase.split(' ')
        words.reduce(Hash.new(0)) do |hash,word|
            dictionary.reduce(hash) do |hash,str|
                hash[str] += 1 if word.include? str
                hash
            end
            hash
        end
    end

end