# Load the Rails application.
require_relative 'application'
# Initialize the Rails application.
Rails.application.initialize!
Rails.application.routes.default_url_options[:host] = 'localhost:3000'
#config.active_storage.service = :local
