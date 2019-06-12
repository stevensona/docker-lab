# frozen_string_literal: true

# Prompt user for their name
print 'Enter your name: '

# Accept input from user and eliminate trailing whitespace
name = gets.chomp

# Greet the user
puts "Hello there, #{name}!"
