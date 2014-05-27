# Dummy::Application

Provides a Rails application for testing rubygems that use rails.
Requires Bundler and Rspec.

## Installation

Add this line to your gemspec:
```ruby
spec.add_development_dependency 'dummy-application'
```

Add this line to your spec helper:
```ruby
require 'dummy/application'
```

You can also optionally add this to your Rakefile to get all available Rails tasks
```ruby
require 'dummy/application/tasks'
```

## Usage

Dummy Application provides all of the bootstrap code to have a rails
application available to your gem's tests.  It sets the root of the rails
application to '/your/gem/path/spec/dummy'.  If you need to add application
code for your specs place them in 'spec/dummy/app'.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dummy-application/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
