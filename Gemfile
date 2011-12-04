source :rubygems

# Server requirements (defaults to WEBrick)
# gem 'thin'
# gem 'mongrel'

# Project requirements
gem 'rake'
gem 'sinatra-flash', :require => 'sinatra/flash'

# Component requirements
gem 'haml'
gem 'coffee-script'
gem 'coffee-filter'
gem 'activerecord', :require => "active_record"
gem 'sqlite3'
gem 'pg', :group => "producion"
gem 'therubyracer', :group => ["development", "test"]

# Test requirements
gem 'rspec', :group => ["test", "production"]
gem 'rack-test', :require => "rack/test", :group => "test"

# Padrino Stable Gem
gem 'padrino', '0.10.5'

# Or Padrino Edge
# gem 'padrino', :git => 'git://github.com/padrino/padrino-framework.git'

# Or Individual Gems
# %w(core gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.10.5'
# end

group :test do
  gem "guard-rspec"
  gem "rb-fsevent"
  gem "growl"
  gem "turn"
  gem "minitest"
  gem "database_cleaner"
end
