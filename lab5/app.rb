# frozen_string_literal: true

require 'sinatra'
require 'csv'

class Guest
  attr_accessor :name, :at

  def initialize(name, at = Time.now)
    self.name = name
    self.at = at
  end

  def self.all
    CSV.read('guests.txt', headers: true).map do |g|
      Guest.new(g['name'], g['at'])
    end
  end

  def self.create(name, at = Time.now)
    guest = Guest.new(name, at)
    guest.save
  end

  def save
    guests = Guest.all
    CSV.open('guests.txt', 'w') do |csv|
      csv << %w[name at]
      csv << [name, at]
      guests.each do |g|
        csv << [g.name, g.at]
      end
    end
    self
  end

end

get '/' do
  # Display an input to the user
  <<-TEMPLATE
    <h1>Sign Guestbook</h1>
    <form action="/guests" method="POST">
      <label>What is your name?</label>
      <input name="name" required/>
      <input type="submit" value="OK" />
    </form>
    <a href="/guests">View guestbook</a>
  TEMPLATE
end

post '/guests' do
  Guest.create(params['name'])
  redirect '/guests'
end

get '/guests' do
  guests = Guest.all
  <<-TEMPLATE
    <h1>Guestbook</h1>
    <p>#{guests.count} entries.</p>
    <ul>
      #{guests.map { |u| '<li>' + u.name + ' at ' + u.at + '</li>' }.join('')}
    </ul>
    <br />
    <a href="/">Back</a>
  TEMPLATE
end

