# see: https://www.honeybadger.io/blog/ruby-bubble-sort/

def bubble_sort(array)
  len = array.length
  return array if len <= 1

  loop do
    # we need to create a variable that will be checked so that we don't run into an infinite loop scenario.
    swapped = false

    # subtract one because Ruby arrays are zero-index based
    (len - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

# unsorted_array = [11,5,7,6,15]
unsorted_array = [-2, 45, 0, 11, -9]
p bubble_sort(unsorted_array)
