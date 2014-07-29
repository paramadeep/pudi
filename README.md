# Pudi
====

Gives total number of https requests made at any given point. Ajax calls are also included.

## Example Applications
- To assert if the page is not reloading, as paart of an action
```ruby
beforeCount = getHttpRequestCount()
#<do some operations here>
afterCount = getHttpRequestCount()
beforeCount.should eq afterCount
```
- To assert if the page is reloading, as paart of an action
```ruby
beforeCount = getHttpRequestCount()
#<do some operations here>
afterCount = getHttpRequestCount()
beforeCount.should < afterCount
#though we might need other assertions here
```

## Usage
```ruby
#Gemfile
gem 'pudi'
```
### Cucumber
```ruby
# In env.rb
require 'pudi'

firefox_profile = Selenium::WebDriver::Firefox::Profile.new
firefox_profile.add_extension File.join(Gem::Specification.find_by_name("pudi").gem_dir,"/lib/pudi/pudi.xpi")

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => firefox_profile)
end
```

## ToDo
1. Capture javascript errors
2. Capture failed http requests
