Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
    provider :github, ENV['Something GitHub-related'], ENV['Something else GitHub-related']
  end