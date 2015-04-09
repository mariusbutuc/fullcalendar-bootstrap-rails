# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fullcalendar/bootstrap/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'fullcalendar-bootstrap-rails'
  spec.version       = Fullcalendar::Bootstrap::Rails::VERSION
  spec.authors       = ['Marius Butuc']
  spec.email         = ['marius.butuc@gmail.com']

  spec.summary       = 'A port of fullcalendar-rails with bootstrap baked in.'
  spec.description   = 'You think FullCalendar is a fruitful addition to your Rails app. But you already use Bootstrap. Welcome!'
  spec.homepage      = 'https://github.com/mariusbutuc/fullcalendar-bootstrap-rails'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',              '~> 1.9'
  spec.add_development_dependency 'rake',                 '~> 10.0'

  spec.add_runtime_dependency     'jquery-rails',         '>= 3.1.1', '< 5.0.0'
  spec.add_runtime_dependency     'momentjs-rails',       '~> 2.8', '>= 2.8.4'
end
