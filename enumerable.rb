# Problem: Create a custom enumerable method that mimics
# the behavior of .each but adds an additional feature,
# such as logging each item processed.
# Skills Practiced: Modules, Enumerable, yield, blocks.

def my_each(array)
  length = array.length

  for i in 0..length - 1
    puts "Before yield: #{array[i]}"
    yield(array[i])
    puts "After yield: #{array[i]}"
  end
end
arr = [1, 2, 3, 4, 5]

my_each(arr) do |item|
  puts "Inside block: #{item + 1}"
end
