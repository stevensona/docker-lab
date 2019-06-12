# frozen_string_literal: true

require 'sinatra'

get '/' do

  # Read and increment counter
  count = File.read('count.txt').to_i + 1

  # Write new count back to file
  File.write('count.txt', count)

  # Display the count to user
  "The count is #{count}. Reload the page"

end