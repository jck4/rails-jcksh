Rails.application.configure do
  # Reload code without server restart
  config.enable_reloading = true

  # Eager load code on boot (default is false in development)
  config.eager_load = false

  # Show full error reports
  config.consider_all_requests_local = true

  # Enable server timing (useful for profiling)
  config.server_timing = true

  # Action Controller caching (only enabled if tmp/caching-dev.txt exists)
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true
    config.public_file_server.headers = { "cache-control" => "public, max-age=#{2.days.to_i}" }
  else
    config.action_controller.perform_caching = false
  end

  # Use memory store for caching
  config.cache_store = :memory_store

  # Store uploaded files on local filesystem (default service)
  config.active_storage.service = :local

  # Disable mailer errors in development
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false
  config.action_mailer.default_url_options = { host: "localhost", port: 3000 }

  # Print deprecation notices
  config.active_support.deprecation = :log

  # Raise error for pending migrations
  config.active_record.migration_error = :page_load

  # Highlight database queries in logs
  config.active_record.verbose_query_logs = true

  # Enable annotations in view files (for debugging)
  config.action_view.annotate_rendered_view_with_filenames = true
  config.assets.debug = true
  config.assets.compile = true

end
