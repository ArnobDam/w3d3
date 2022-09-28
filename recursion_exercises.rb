def range_itr(min, max)

    return [] if max < min

    arr = []
    (min...max).each do |num|
        arr << num
    end
    arr
end

def range_rec(min, max)

end

p range_itr(1,5)
