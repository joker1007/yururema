PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.mock_with :rspec
end

def app
  ##
  # You can handle all padrino applications using instead:
  #   Padrino.application
  Yururema.tap { |app|  }
end
