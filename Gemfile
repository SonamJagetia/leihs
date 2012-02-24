source 'http://rubygems.org'

gem 'rails', '3.1.3'
#tmp# gem 'builder', '~> 3.0' 
#tmp# gem 'i18n', '~> 0.6.0' # Need this explicitly, otherwise can't deploy

gem 'mysql2', '~> 0.3.11'
#tmp# gem 'squeel', '~> 0.8.4'

# Asset template engines
gem 'json', '~> 1.6'
gem 'haml', '~> 3.1'
gem 'sass', '~> 3.1'
gem 'coffee-script', '~> 2.2'
gem 'jquery-rails', '~> 1.0'
gem 'jquery-tmpl-rails'
gem 'haml_assets'
gem "rabl", "~> 0.5.4"

# Gems used only for assets and not required in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.1'
  gem 'coffee-rails', '~> 3.1'
  gem 'uglifier', '~> 1.1'
end

gem 'rails_autolink', '~> 1.0'

#gem 'will_paginate', '~> 3.0' # alternatives: kaminari
gem 'will_paginate', :git => "https://github.com/halloffame/will_paginate.git" # fixing count distinct, alternatives: .count(:id, :distinct => true)

gem 'gettext_i18n_rails', '~> 0.3'
gem 'ruby_parser', '~> 2.3' # gettext dependency that Bundler seems unable to resolve

gem 'barby', '~> 0.5.0'
#gem "cairo" # Needed to print SVG barcodes
# gem "RubyInline", '3.8.2', :require => "inline"

gem 'mini_magick', '~> 3.3'

gem 'rgl', '~> 0.4.0', :require => 'rgl/adjacency'
gem 'ruby-net-ldap', '~> 0.0.4', :require => 'net/ldap'
gem 'fastercsv', '~> 1.5.4'
#tmp# gem 'png', '~> 1.2.0'

#. Let's stop using PDF.
gem 'prawn', '~> 0.12.0'
gem 'prawnto', '~> 0.0.4'

gem 'nested_set', '~> 1.6.8'
gem 'acts-as-dag', '~> 2.5.5' # TOOD use instead ?? gem 'dagnabit', '2.2.6'

gem 'geocoder', '~> 1.1'

group :profiling, :development do
	gem 'newrelic_rpm', '~> 3.3'
end

group :development do 
  gem 'gettext', '~> 2.1.0', :require => false 
end

group :cucumber, :development do
  gem 'pry' #gem 'ruby-debug19', '~> 0.11.6', :require => 'ruby-debug'
end

group :cucumber, :test do
	gem 'cucumber-rails', '~> 1.2', :require => false
	gem 'database_cleaner', '~> 0.7', :require => false
	gem 'rspec', '~> 2.7', :require => false
	gem 'rspec-rails', '~> 2.7', :require => false
	gem 'nokogiri', '~> 1.5.0'
	gem 'capybara', '~> 1.1'
  gem 'launchy', '~> 2.0.5'
end

#group :culerity do
#	# http://github.com/langalex/culerity - enable testing of JavaScript views
#	gem "culerity"
#end
