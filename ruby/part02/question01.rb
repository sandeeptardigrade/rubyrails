def filter (array)
    result = []
    for x in array
        if yield(x)
            result << x
        end
    end
    return result
end

p filter (1..100) { |j| j % 2 == 0}