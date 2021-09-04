require "pry"

def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  outer_array_index = 0

  while outer_array_index < src.length do 
    inner_array_index = 0

    while inner_array_index < src[outer_array_index].length do
      # Thought process: If the element is not equal to a string, delete it. 
      if src[outer_array_index][inner_array_index].class != String
        src[outer_array_index].delete(src[outer_array_index][inner_array_index])
        # Had to include this line because integer elements that are right next to one another are disregarded due to their indices. QUick solution! 
        inner_array_index -= 1
      end
      inner_array_index += 1
    end
    outer_array_index += 1
  end
  src.flatten().join(" ")
end