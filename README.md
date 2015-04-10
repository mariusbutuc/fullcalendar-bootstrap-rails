# Fullcalendar::Bootstrap::Rails

1. Want to display the events in your Rails app as a calendar?  
  [FullCalendar][fullcalendar] is a quick and dirty way to do it.
2. Want it all bundled up nicely as an asset gem for use with Rails' asset pipeline?
  [fullcalendar-rails][fullcalendar-rails] is one of the best options.
3. Tried to make it look consistent with the rest of your [Bootstrap][bootstrap]-powered views?
  Welcome!

## Installation

Add this gem and its [momentjs][moment] dependency to your application's Gemfile:
```ruby
gem 'momentjs-rails'
gem 'fullcalendar-bootstrap-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fullcalendar-bootstrap-rails

At this point, the files from the FullCalendar project are in your asset 
pipeline's path… all you have to do is require them in the appropriate places.

Here is an example:
* CSS:
  ```scss
  // app/assets/stylesheets/application.scss

  @import "bootstrap-sprockets";
  @import "bootstrap";
  // after the bootstrap dependency
  @import "fullcalendar";
  ```

* javascript:
  ```js
  // app/assets/javascripts/application.js

  //= require bootstrap-sprockets
  //= require moment
  // after the bootstrap and moment dependencies
  //= require fullcalendar
  ```

For more details and options, check the [fullcalendar-rails installation section][fullcalendar-rails-install].

### A note on versioning

First noticed this type of versioning with @bokmann's [fullcalendar-rails][fullcalendar-rails]:

> I am going to version this gem with the version of the FullCalendar code I use, adding an extra digit if I need to release any maintenance versions of the gem itself.

Makes sense to me: It's [Semantic Versioning][semver], just that a different semantic. I'm inheriting it, this way you can explicitly require a specific version of FullCalendar, if available:

    gem 'fullcalendar-bootstrap-rails', '~> 2.3.1.0'

where the digit after the [semantical patch version][semver] indicates the release of this gem.

## Usage

    HTTP/1.1 302 Found
    Location: http://fullcalendar.io/

I mean, not much to say here. You're more interested in how to use [FullCalendar][fullcalendar].

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/mariusbutuc/fullcalendar-bootstrap-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


  [fullcalendar]: http://fullcalendar.io/
  [fullcalendar-rails]: https://github.com/bokmann/fullcalendar-rails
  [fullcalendar-rails-install]: https://github.com/bokmann/fullcalendar-rails#installation
  [moment]: http://momentjs.com/
  [bootstrap]: http://getbootstrap.com/
  [semver]: http://semver.org/
