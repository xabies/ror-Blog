# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_BlogConFotos_session',
  :secret      => '2ed8daac083ada8fe1e920c23d9f4f38555bc5a71f198af86c83e74b67f3e2ced60d1f6e9a7ebc3501a237d9edd67adc55911750741550ab53919a7248250ed3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
