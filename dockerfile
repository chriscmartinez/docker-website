# Create a jekyll container from a Ruby Alpine Image

# At a minimum use Ruby 2.5 or later
FROM ruby:2.7-alpine

# Add Jekyll dependencies to Alpin
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll
