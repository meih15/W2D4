# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]
def all_vowel_pairs(words)
    pair = []
    add = ""
    words.each.with_index do |ele, idx|
        words.each.with_index do |word, idx1|
            if idx1 > idx
                if every_vowel(ele, word)
                    pair <<  ele + " " + word
                end
            end
        end
        end

       
    pair

end

def every_vowel(word1, word2)
    words = [word1, word2]
    vowels = "aeiou"
    has = []

    words.each do |word|
        word.each_char do |char|
            if vowels.include?(char)
                has << char
            end
        end
    end

    return false if has.length < 5
    vowels.each_char {|vowel| return false if !has.include?(vowel)}

end

# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false
def composite?(num)

    (2...num).each { |divisor| return true if num % divisor == 0 }
    false

end


# A bigram is a string containing two letters.
# Write a method, find_bigrams, that takes in a string and an array of bigrams.
# The method should return an array containing all bigrams found in the string.
# The found bigrams should be returned in the the order they appear in the original array.
#
# Examples:
#
# find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
# find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
def find_bigrams(str, bigrams)

    has = []

    bigrams.each do |ele|
        has << ele if str.include?(ele)
    end

    has

end

class Hash
    # Write a method, Hash#my_select, that takes in an optional proc argument
    # The method should return a new hash containing the key-value pairs that return
    # true when passed into the proc.
    # If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
    #
    # Examples:
    #
    # hash_1 = {x: 7, y: 1, z: 8}
    # hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
    #
    # hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
    # hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
    # hash_2.my_select                            # => {4=>4}
    def my_select(&prc)


        if prc == nil
            self.select {|k, v| k == v}
        else
            self.select { |k, v| prc.call(k, v)}
        end


    end
end


class String
    # Write a method, String#substrings, that takes in a optional length argument
    # The method should return an array of the substrings that have the given length.
    # If no length is given, return all substrings.
    #
    # Examples:
    #
    # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
    # "cats".substrings(2)  # => ["ca", "at", "ts"]
    def substrings(length = nil)
     
        substring = []
        len = self.length
        i = 0
    
        
        while i < len
            # self.each_char.with_index do |char, idx| 
            (0...len).each do |idx|
                if idx >= i
                substring << self[i..idx]
                end
            end

            i += 1
        end
           
      
      
       return substring if length == nil 

       substring.select {|ele| ele.length == length}

    end


    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"
    def caesar_cipher(num)
        alphabet = "abcdefghijklmnopqrstuvwxyz"
        word = ""

        self.each_char do |char|
            old_i = alphabet.index(char)
            word += alphabet[(old_i + num) % 26]
        end
        word
        
    end



end
