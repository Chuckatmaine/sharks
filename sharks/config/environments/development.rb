Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
#  config.action_mailer.default_url_options = { :host => 'railsme.asuscomm.com' }

  config.action_mailer.delivery_method = :mandrill
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true 
  config.action_mailer.default :charset => "utf-8"
  config.secret_key = '261609626afd27cef008a079ee5caafbe5141e83c777c6433ee34b955a7a89543832d5029c6c9b2d243bc942081f9d62bc1b8a91286313c6814311ea03aa959b'

  config.action_mailer.smtp_settings = {
  address: "smtp.mandrillapp.com",
  port: 587,
  domain: "asuscomm.com",
  authentication: "login",
  enable_starttls_auto: true,
  user_name: "auctions.csbaker@gmail.com",
  password: ENV['MANDRILL_APIKEY']
}
end
