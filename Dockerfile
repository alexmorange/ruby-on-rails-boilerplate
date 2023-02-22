FROM ruby:3.2.1-alpine 
# Create app directory
RUN apk update && \
  apk add --no-cache build-base libpq-dev nodejs postgresql-client yarn
WORKDIR /rails
# Install Gems
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs=3 --retry=3
# Install npm packages
COPY package.json yarn.lock ./

COPY . .

# Configure the main process to run when running the image
EXPOSE 3000
CMD ["rails", "s", "-b", "0.0.0.0"]