def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays

  daily_results = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    lowest_temp_element = 10000
    while element_index < src[row_index].count do

      # Array at row_index
      # Element of the inner array at element_index
      # If the value of the current element is less than the value of lowest_temp_element
      # Set lowest_temp_element to the current element
      if src[row_index][element_index] < lowest_temp_element
        lowest_temp_element = src[row_index][element_index]
      end
      element_index += 1
    end

    # We have to check every element in each inner array, so after the loop finishes
    # The current value of lowest_string_element is pushed into daily_results
    daily_results << lowest_temp_element
    row_index += 1
  end
  daily_results
end