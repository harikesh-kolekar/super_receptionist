# SuperReceptionist ruby gem

This gem allows for idiomatic SuperReceptionist usage from within ruby. SuperReceptionist is everything you need for your business phone system. Check it out at https://sr.knowlarity.com/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'super_receptionist'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install super_receptionist

## SuperReceptionist exposes the following resources:
  * Agent
  * Call
  * Campaign
  * Circle
  * Notification
  * Number
  * Phonebook
  * Plans
  * Sound
  * Task
## Usage
We mimic the ActiveRecord-style interface.
#### Configuration
```ruby
# Initialize your Mailgun object:
SuperReceptionist.configure do |config|
  config.channel = 'your-channel'
  config.x_api_key  = 'your-x_api_key'
  config.authorization = 'your-authorization'
end

@super_receptionist = SuperReceptionist()

# or alternatively:
@super_receptionist = SuperReceptionist(:channel => 'your-channel',
					                    :x_api_key => 'your-x_api_key'
					                    :authorization => 'your-authorization'
									   )
```





## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/super_receptionist. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

