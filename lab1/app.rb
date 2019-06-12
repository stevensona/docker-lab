# frozen_string_literal: true

require 'sinatra'

get '/' do
  # Display an input to the user
  <<-TEMPLATE
    <form action="/do_something" method="POST">
      <label>What is your name?</label>
      <input name="name" required/>
      <input type="submit" value="OK" />
    </form>
  TEMPLATE
end

post '/do_something' do
  # Greet the user and provide a link back to the form
  <<-TEMPLATE
    <p>Hello there, #{params['name']}!</p>
    <a href="/">Back</a>
  TEMPLATE
end
