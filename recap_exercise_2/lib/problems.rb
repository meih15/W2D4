# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)

   i = 1

   found = false

    while found == false
        found = true
        multiple = num_1 * i
        if multiple % num_2 == 0
            return multiple
        else
            found = false
            i += 1
        end
    end
    

end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    count = Hash.new(0)
    arr = []

    str.each_char.with_index do |char1, idx1|
        str.each_char.with_index do |char2, idx2|
            if idx2 > idx1
                arr << str[idx1..idx2]
            end
        end
    end

    arr.each {|ele| count[ele] += 1}
    new_a = count.sort_by {|k, v| v}
    new_a[-1][0]

end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        reversed = Hash.new

        self.each {|k , v| reversed[v] = k}
        reversed
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        count = 0

        self.each.with_index do |ele1, idx1|
            self.each.with_index do |ele2, idx2|
                if idx2 > idx1
                    count += 1 if ele1 + ele2 == num 
                end
            end
        end
        count
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        
      return self.sort! if prc == nil

    

      sorted = false

    while sorted == false
        sorted = true
        (0...self.length - 1).each do |idx|
                first = self[idx]
                second = self[idx + 1]
                if prc.call(first, second) == 1
                    self[idx], self[idx+1] = self[idx + 1], self[idx]
                    sorted = false
                end
        end
    end
        self
    end
end
