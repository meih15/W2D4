def char_indices(str)

    count = Hash.new()
    arr = []

    str.each_char.with_index do |char, idx|
        if count[char] == nil
            count[char] = [idx]
        else
            count[char] << idx
        end
    end

    count
end



p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}