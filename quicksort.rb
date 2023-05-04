def quicksort(array, start, last)
    return array if start >= last
    p = partition(array, start, last)
    quicksort(array, start, p - 1)
    quicksort(array, p + 1, last)
end

def partition (a, start, last)  
    i = (start - 1) 
    pivot = a[last] # pivot element
    for j in (start..last) 
        # If current element is smaller than or equal to the pivot 
        if (a[j] <= pivot) 
            i = i + 1  
            a[i], a[j] = a[j], a[i]
        end
    end
    return i
end

array = [1,1,11,11,11,3,1,4,100]
p quicksort(array, 0, 8)