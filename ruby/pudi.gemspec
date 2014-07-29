Gem::Specification.new do |s|
  s.name = 'pudi'
  s.version = '0.0.4'
  s.date = '2014-07-29'
  s.summary = "Get count of http request fired by a web app"
  s.description = "Get count of http request fired by a web app"
  s.authors = ["deepak p"]
  s.files = Dir['README.md', 'lib/**/*']
  s.homepage =
    'https://github.com/paramadeep/pudi'
  s.license = 'MIT'

  s.add_runtime_dependency 'capybara', '>= 2.1.0'
  s.add_runtime_dependency 'selenium-webdriver', '>= 2.0'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubygems-tasks', '~> 0.2.4'
  s.add_development_dependency 'rubyzip'
  s.add_development_dependency 'pry'

end
