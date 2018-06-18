# EsFields
Provides an idiomatic way to generate elastic search field mappings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'es_fields'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install es_fields

## Usage

```ruby
  mapping do
    field :name, :string
    field :age, :long
    field :email, :keyword
  end
```
This will return a Hash which can be used with ElasticSearch API to add fields to an existing index.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yask123/es_fields.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
