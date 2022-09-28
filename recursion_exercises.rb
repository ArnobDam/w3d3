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
