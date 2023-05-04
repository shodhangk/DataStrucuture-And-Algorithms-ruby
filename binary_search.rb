

def search(array, key)
    high = array.size - 1
    low = 0
    while low <= high
        mid = (low + high) / 2
        if array[mid] == key
            return print "Found at #{mid}"
        elsif array[mid] > key
            high = mid - 1
        else
            low = mid + 1
        end
    end
    print "Not found!"
end

array = [1,3,4,15,26,35,45,55]
key = 26
puts search(array, key)