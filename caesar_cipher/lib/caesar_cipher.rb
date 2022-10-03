class CaesarCipher
    
    def translate text, number
        text.split('').map{|c| convert(c,number)}.join
    end

    private

    def convert chr, number
        if chr.match '[a-z]'
            between('a'.ord, 'z'.ord, chr.ord + number).chr
        elsif chr.match '[A-Z]' 
            between('A'.ord, 'Z'.ord, chr.ord + number).chr
        else
            chr
        end
    end

    # It goes through the given range [min ... max] and returns a value within it.
    def between min, max, number
        (number - min) % (max - min + 1) + min
    end
    
end