# Problem: Write a Ruby program that takes a string
# and transforms every third character to
# uppercase, reverses the string, and then encodes it in base64.
# Skills Practiced: String manipulation, encoding, control structures.
require "base64"

puts "Enter a string you'd like to transform:"
user_input = gets.chomp

puts "You entered: #{user_input}"

user_input.each_char.with_index do |char, index|
  puts user_input[index]
  if index % 3 == 0
    user_input[index] = char.upcase! || char
  end
end

puts "First transformation: #{user_input}"

user_input.reverse!

puts "Second transformation: #{user_input}"

enc = Base64.encode64(user_input)

puts "Final transformation: #{enc}"

puts "Decoded: #{Base64.decode64(enc)}"
