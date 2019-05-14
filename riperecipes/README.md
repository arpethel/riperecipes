# Riperecipes

riperecipes is a simple CLI gem to get recipe ingredients from AllRecipes.com for select meals. This gem pulls
data from the "Most Made Today" section of five different cuisines: Asian, Indian, Italian, Mexican and Southern.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'riperecipes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install riperecipes

## Usage

This gem provides a Command Line Interface (CLI) to an external data source (allrecipes.com).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/arpethel/riperecipes.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
