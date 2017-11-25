# SuperReceptionist ruby gem

This gem allows for idiomatic SuperReceptionist usage from within ruby. SuperReceptionist is everything you need for your business phone system. Check it out at https://developer.knowlarity.com/api-reference

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
# Initialize your SuperReceptionist object:
SuperReceptionist.configure do |config|
  config.channel = 'your-channel'
  config.x_api_key  = 'your-x_api_key'
  config.authorization = 'your-authorization'
end

@super_receptionist = SuperReceptionist()

# or alternatively:
@super_receptionist = SuperReceptionist(:channel => 'your-channel',
                                        :x_api_key => 'your-x_api_key',
                                        :authorization => 'your-authorization'
                                       )
```

#### Agent
```ruby
# Get Agents List
@super_receptionist.agent.list()

# Find Agent with id
@super_receptionist.agent.find(<agent_id>)

```

#### Call

```ruby
#Get call logs
filter_option = {
                  start_time:"2017-03-13 12:00:00+05:30", #Mandatory
                  end_time:"2017-03-14 12:00:00+05:30",  #Mandatory
                  call_type: <call_type>, 
                  agent_number: <agent_number>,
                  knowlarity_number: <knowlarity_number>,
                  business_call_type: <business_call_type>,
                  customer_number: <customer_number>,
                  limit: <limit>
                }

@super_receptionist.call.logs(filter_option)

# Make Ougoing call
call_details = {
        "k_number": "+919069118xxx",
        "agent_number": "+919069118xxx",
        "customer_number": "+918861037xxx"
    }
@super_receptionist.call.makecall(call_details)

```

#### Campaign

```ruby
# Get Campaign list
filter_option = {
                  order_id: <order_id>,
                  created_time__gte: <created_time__gte>,
                  created_time__lte: <created_time__lte>, 
                  agent_number: <agent_number>,
                  end_time__gt: <end_time__gt>,
                  end_time__gte: <end_time__gte>,
                  end_time__lt : <end_time__lt >,
                  end_time__lte: <end_time__lte>,
                  is_transactional: <is_transactional>,
                  ivr_id: <ivr_id>,
                  phonebook_id: <phonebook_id>,
                  start_time__gt: <start_time__gt>,
                  start_time__gte: <start_time__gte>,
                  start_time__lt: <start_time__lt>,
                  start_time__lte: <start_time__lte>
                }

@super_receptionist.campaign.list(filter_option)

# Create new Campaign 
create_option = {
                  sound_id/ivr_id: <sound_id/ivr_id>, #Required
                  timezone: <timezone>, #Required
                  start_time: <start_time>,  #Required
                  k_number: <k_number>, #Required
                  phonebook: <phonebook>,
                  priority: <priority>,
                  order_throttling : <order_throttling >,
                  retry_duration: <retry_duration>,
                  max_retry: <max_retry>,
                  end_time: <end_time>,
                  call_scheduling: <call_scheduling>,
                  call_scheduling_start_time: <call_scheduling_start_time   >,
                  call_scheduling_stop_time: <call_scheduling_stop_time>,
                  additional_number: <additional_number>,
                  is_transactional: <is_transactional>
                }

@super_receptionist.campaign.create(create_option)

# Update Campaign
campaign = { status: <status>  }
@super_receptionist.campaign.update(<id>, campaign)

# Add Number to Campaign
campaign = { order_id: <order_id> , phone_numbers: <phone_numbers> }
@super_receptionist.campaign.add_number(<id>, campaign)

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/super_receptionist. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

