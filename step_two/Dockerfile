FROM ruby:2.2.2

WORKDIR /var/app
EXPOSE 4567

COPY Gemfile .
RUN bundle install

COPY lib lib

CMD ["ruby", "lib/app.rb"]
