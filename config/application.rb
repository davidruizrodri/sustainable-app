# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SustainableApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Once an application reaches a certain maturity level, we want to use
    # every trick in the book to boost efficiency, preserve data correctness, and ensure
    # blazing-fast performance. Using the SQL format makes that possible
    config.active_record.schema_format = :sql

    config.generators.test_framework = :rspec
  end
end
