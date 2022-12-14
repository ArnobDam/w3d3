def range_itr(min, max)

    return [] if max < min

    arr = []
    (min...max).each do |num|
        arr << num
    end
    arr
end

def range_rec(min, max)

    return [] if max <= min

    arr = []

    arr += [min] + range_rec(min+1, max)
end

# p range_itr(1,5)
# p range_rec(1,5)


def exp_1(base,exp)
   return 1 if exp == 0

    base * exp_1(base,exp-1)
end

# p exp_1(2,0)
# p exp_1(2,1)
# p exp_1(2,2)
# p exp_1(2,3)

def exp_2(base,exp)
    return 1 if exp == 0
    return base if exp == 1
    
    if exp.even?  
        even_case = exp_2(base,exp/2)
        even_case * even_case
    else
        odd_case = exp_2(base,(exp-1)/2)
        base * odd_case * odd_case
    end
end

# p exp_2(2,0)
# p exp_2(2,1)
# p exp_2(2,2)
# p exp_2(2,3)
# p exp_2(2,4)
# p exp_2(2,5)

# $count = 0
def deep_dup(arr)
    # return arr if !arr.is_a?(Array)

    new_arr = []

    arr.each do |ele|
        if !ele.is_a?(Array)
            new_arr << ele
        else
            new_arr << deep_dup(ele)
            # $count += 1
        end
    end

    new_arr
end
# a = [[1], [2], [[3], [[4]]]]
# p a[0].object_id
# p deep_dup(a)
# p deep_dup(a[0]).object_id
# p $count

def fibonacci(n)
     return [0,1].take(n) if n<=2
    


    previous = fibonacci(n-1)

   previous + [previous[-1] + previous[-2]]
end

# p fibonacci(7)

def bsearch(array, target)
    return nil if array.length == 0

    mid_pos = array.length / 2

    left = array[0...mid_pos]
    right = array[mid_pos+1..-1]

    if array[mid_pos] == target
        mid_pos
    elsif target < array[mid_pos]
        bsearch(left,target)
    else
        result = bsearch(right,target)

        return nil if result == nil

        result + mid_pos + 1
    end
end

a = [1,2,3,4]
b = [1,2,3,4,5]

# p bsearch(a,4)
# p bsearch(b,6)

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil


