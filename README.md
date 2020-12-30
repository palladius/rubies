README.md
=========

This page containts preprequisites and black magic knowledge to make all my 2010 RoR 2.3.X apps work
while ruby1.8 disappears from dockerhub.
I'll also share knowledge to make  mysql go, and other weirdities.

# Pages

*  All rails versions: https://rubygems.org/gems/rails/versions
   * e.g. 2.3.5 deps: https://rubygems.org/gems/rails/versions/2.3.5
*  All rubies: https://www.ruby-lang.org/en/downloads/releases/
   * e.g. latest 1.8 is "1.8.7-p374"
   * e.g. latest 1.9 is "1.9.3-p551"

*  Compatibility matrix
   * simple: https://www.devalot.com/articles/2012/03/ror-compatibility.html
   * Recommended:
     * 2.2 -> 1.8.7
    * 2.3 -> 1.8.7
    * 3.x -> 1.9.3
    * 4.x -> 2.0.x
   * Objective answer ma frega meno: https://stackoverflow.com/questions/9087116/which-ruby-on-rails-is-compatible-with-which-ruby-version

# Super mega idea

Mega idea that came this morning is: how about I try 238 different rubies and install a couple of my old apps and just try `script/server`
on them and see if it works? I need a battery of N dockers which I an compile on a very big disk/cpu machine, and then say FOR I IN IMAGE DO ...
This repo is about this - now. IN case I get drunk, my latest experiments are here:

* https://github.com/palladius/pasta/tree/master/docker-experiments 

.. and it works!

   ~/git/rubies/docker-experiments$ 🐸  ./for-each-docker-build-do pwd
   Not built -> Skipping: Dockerfile.palladius-r187
   #DEB Built ok - so proceeding with Dockerfile.palladius-septober
   ruby 1.9.3p484 (2013-11-22 revision 43786) [x86_64-linux]
   #DEB Built ok - so proceeding with Dockerfile.ru18ra2318
   ruby 1.8.7 (2013-12-22 patchlevel 375) [x86_64-linux]
   #DEB Built ok - so proceeding with Dockerfile.ruby18
   ruby 1.8.7 (2017-12-15 patchlevel 377) [x86_64-linux]

# Docker

Ruby1.8 cant be found, ruby1.9 CAN.

rbenv vs rvm? Apparently for devs RBENV is better (more flex, more magic), but for prod/docker RVM is better (more static, less magic)

## Dockerizing rails

I'm finding ideas all over the internet, let's write them down here to then dockerize intelligently.

1. `bundle package --all` will download the Gems locally. Great to save time at every dockerization - should make bundle install MUCH faster.
2. Create "semi-finished product" docker images where you manually compile gems, like nokogiri which takes THREE minutes (!) to build. Of course you need to nail thje RIGHT version, eg `RUN gem install -N nokogiri -v 1.6.2.1` (i presume you reverse engineer after making the mistake once -> you back port the slow thing upstream)



# Sources

* https://medium.com/@benb88/dockerize-existing-ruby-on-rails-application-d75fe271c859