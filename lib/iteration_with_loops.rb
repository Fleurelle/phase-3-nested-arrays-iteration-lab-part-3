require "pry"

def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  outer_array_index = 0

  while outer_array_index < src.length do 
    inner_array_index = 0

    while inner_array_index < src[outer_array_index].length do
      if src[outer_array_index][inner_array_index].class != String
        src[outer_array_index].delete(src[outer_array_index][inner_array_index])
        inner_array_index -= 1
      end
      inner_array_index += 1
    end
    outer_array_index += 1
  end
  src.flatten().join(" ")
end