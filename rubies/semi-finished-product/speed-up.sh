FROM __DOCKER_IMAGE__

# https://medium.com/@benb88/dockerize-existing-ruby-on-rails-application-d75fe271c859
bundle package --all

# takes 3 minutes..
gem install -N nokogiri -v 1.10.10
