Rails.application.config.generators.template_engine = :slim

if Rails.env.development?
  Slim::Engine.set_options pretty: true
end
