FROM ruby:2.7.3

RUN  apt-get update \
  && apt-get install -qq -y --no-install-recommends \
   build-essential \
   nodejs \
   libpq-dev \
   tzdata \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install
COPY . .
EXPOSE 3000
