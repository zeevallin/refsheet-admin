App::Application.config.secret_key_base = ENV.fetch("SECRET_KEY_BASE") { raise "SECRET_KEY_BASE must be set, run `rake secret` to get one" }