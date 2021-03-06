require 'simplecov'
require 'simplecov-html'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new SimpleCov::Formatter::HTMLFormatter
SimpleCov.start

require 'agnostic_backend'
require 'agnostic_backend/rspec/matchers'

RSpec.configure do |config|
  config.include AgnosticBackend::RSpec::Matchers
end
