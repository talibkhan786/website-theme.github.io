# Use an official Ruby image
FROM ruby:3.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential nodejs

# Set working directory
WORKDIR /usr/src/app

# Copy Gemfile, Gemfile.lock, and gemspec
COPY Gemfile* *.gemspec ./

# Install gems
RUN gem install bundler && bundle install

# Copy the rest of the app
COPY . .

# Expose port 4000 (default Jekyll port)
EXPOSE 4000

# Serve the site
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"] 