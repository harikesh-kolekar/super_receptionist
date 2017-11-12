require "json"
require "uri"
require 'rest-client'
require 'super_receptionist/agent'
require 'super_receptionist/base'
require 'super_receptionist/call'
require 'super_receptionist/campaign'
require 'super_receptionist/circle'
require 'super_receptionist/client'
require 'super_receptionist/notification'
require 'super_receptionist/number'
require 'super_receptionist/phonebook'
require 'super_receptionist/plans'
require 'super_receptionist/sound'
require 'super_receptionist/task'
require 'super_receptionist/version'

def SuperReceptionist(options = {})
  options[:channel] = SuperReceptionist.channel if SuperReceptionist.channel
  options[:x_api_key] = SuperReceptionist.x_api_key if SuperReceptionist.x_api_key
  options[:authorization] = SuperReceptionist.authorization if SuperReceptionist.authorization
  SuperReceptionist::Base.new(options)
end
