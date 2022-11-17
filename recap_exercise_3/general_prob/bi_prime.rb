def bi_prime?(num)


    (2...num).each do |num1|
        (2...num).each do |num2|
            if is_prime?(num1) && is_prime?(num2) && num1 * num2 == num
                return true
            end
        end
    end

    false
end


def is_prime?(num)
    return true if num == 2

    (3...num).each do |number|
       return false if num % number == 0
    end

     true
    

end


p bi_prime?(14)   # => true
p bi_prime?(22)   # => true
p bi_prime?(25)   # => true
p bi_prime?(94)   # => true
p bi_prime?(24)   # => false
p bi_prime?(64)   # => false