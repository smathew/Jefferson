# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Jefferson_session',
  :secret      => 'c25f3eb8a709ed47dbface5c3593c9a5df535d9d5b0f5df213619baf50faefc8f5b4e09654c87fd3cb70d66addd2ab89f1871b0f08837cc58e0dc020f951feb4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
