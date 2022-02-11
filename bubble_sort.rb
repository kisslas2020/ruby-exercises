unsorted_array = ARGV.empty? ? [4,3,78,2,0,2] : ARGV[0].split(',').map {|n| n.to_i == 0 ? n : n.to_i}

def bubble_sort(unsorted_array)
    count = 1
    end_index = unsorted_array.length - 2
    until count == 0
        count = iterate_round(unsorted_array, end_index)
        end_index -= 1
    end
    unsorted_array
end

def iterate_round(unsorted_array, end_index)
    count = 0
    for i in 0..(end_index)
        if unsorted_array[i] > unsorted_array[i + 1]
            unsorted_array = swap(i, unsorted_array)
            count += 1
        end
    end
    count
end

def swap(index, unsorted_array)
    temp = unsorted_array[index]
    unsorted_array[index] = unsorted_array[index + 1]
    unsorted_array[index + 1] = temp
    unsorted_array
end

p unsorted_array
p bubble_sort(unsorted_array)