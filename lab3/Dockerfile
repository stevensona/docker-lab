FROM ruby:2.6
RUN gem install bundler
COPY Gemfile* ./
RUN bundle install
COPY . .
CMD ["ruby", "app.rb", "-o", "0.0.0.0" ]