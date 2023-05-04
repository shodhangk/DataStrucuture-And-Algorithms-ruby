def selection_sort(a)
  n = a.size - 1
  for i in 0..n
    for j in 0..n - i - 1
      a[j], a[j + 1] = a[j + 1], a[j] if a[j] > a[j + 1]
    end
  end
end

array = [1, 23, 21, 0, 56, 34, 1]

selection_sort(array)
p array
