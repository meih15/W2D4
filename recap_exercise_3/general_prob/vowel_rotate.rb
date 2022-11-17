def vowel_rotate(str)

    vowels = "aeiou"
    letters = []
    indices = []
    new_str = ""

    str.each_char.with_index do |char, idx|
        if vowels.include?(char)
            letters << char
            indices << idx
        end
    end

    letters.rotate!(-1)

    str.each_char do |char|
        if vowels.include?(char)
            new_str += letters.shift.to_s
        else
            new_str += char
        end
    end

    new_str
        
end


p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges')       # => "erongas"
p vowel_rotate('headphones')    # => "heedphanos"
p vowel_rotate('bootcamp')      # => "baotcomp"
p vowel_rotate('awesome')       # => "ewasemo"