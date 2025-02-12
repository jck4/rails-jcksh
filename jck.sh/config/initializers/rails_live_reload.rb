# frozen_string_literal: true

RailsLiveReload.configure do |config|



  config.watch %r{app/views/.+\.(erb|haml|slim)$}
  config.watch %r{(app|vendor)/(assets|javascript)/\w+/(.+\.(css|js|html|png|jpg|ts|jsx)).*}, reload: :always
  config.watch %r{app/helpers/.+\.rb}, reload: :always
  config.watch %r{config/locales/.+\.yml}, reload: :always
  config.enabled = Rails.env.development?
end if defined?(RailsLiveReload)
