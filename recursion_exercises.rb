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

p exp_1(2,0)
p exp_1(2,1)
p exp_1(2,2)
p exp_1(2,3)

