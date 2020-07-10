# see: https://www.honeybadger.io/blog/big-o-notation-ruby/

# O(n)
def find_number_via_linear_search(array, target)
  counter = 0

  # iterate torough the given array starting
  # at index 0 and continuing until the end
  while counter < array.length
    if array[counter] == target
      # exit if targe element found
      return "linear serach took: #{counter} iterations"
    else
      counter += 1
    end
  end

  "#{target} not found"
end


array = [*1..50].shuffle

pp find_number_via_linear_search(array, 24)
