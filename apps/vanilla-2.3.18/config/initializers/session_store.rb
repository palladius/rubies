# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vanilla-2.3.18mecab_session',
  :secret      => '83dd49f83f05a4063633b495ebe1c1bd7ee8d99a1419709b163cea132257297cfaf52b1d0ffca1d348fac987e487d8c325d1e0c6f363cbcafee80b2c0be0b601'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
