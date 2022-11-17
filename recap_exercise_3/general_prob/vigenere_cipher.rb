def vigenere_cipher(message, keys)

    alphabet = "abcdefghjiklmnopqrstuvwxyz"
    new_str = ""

    len = keys.length
    i = 0



    message.each_char do |char|
        old_i = alphabet.index(char)
        if i < len
            new_i = old_i + keys[i]
            new_str += alphabet[(new_i) % 26]
            i += 1
        else
            i = 0
            new_i = old_i + keys[i]
            new_str += alphabet[(new_i) % 26]
            i += 1
        end
    end

    new_str


end

p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
p vigenere_cipher("yawn", [5, 1])             # => "dbbo"
