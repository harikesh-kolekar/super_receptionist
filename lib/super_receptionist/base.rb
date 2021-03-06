module SuperReceptionist
  class Base
  	def initialize(options)
      SuperReceptionist.api_host        = options.fetch(:api_host)        { "kpi.knowlarity.com" }
      SuperReceptionist.protocol        = options.fetch(:protocol)        { "https" }
      SuperReceptionist.api_version     = options.fetch(:api_version)     { "v1" }
      SuperReceptionist.test_mode       = options.fetch(:test_mode)       { false }
      SuperReceptionist.channel         = options.fetch(:channel)         { raise ArgumentError.new(":channel is a required argument to initialize SuperReceptionist") if SuperReceptionist.channel.nil? }
      SuperReceptionist.x_api_key       = options.fetch(:x_api_key)       { raise ArgumentError.new(":x_api_key is a required argument to initialize SuperReceptionist") if SuperReceptionist.x_api_key.nil? }
      SuperReceptionist.authorization   = options.fetch(:authorization)   { raise ArgumentError.new(":authorization is a required argument to initialize SuperReceptionist") if SuperReceptionist.authorization.nil? }
    end

    def base_url
      "#{SuperReceptionist.protocol}://#{SuperReceptionist.api_host}/#{SuperReceptionist.channel}/#{SuperReceptionist.api_version}/"
    end

    def call
      SuperReceptionist::Call.new(self)
    end

    def agent
      SuperReceptionist::Agent.new(self)
    end

    def compaign
      SuperReceptionist::Compaign.new(self)
    end

    def circle
      SuperReceptionist::Circle.new(self)
    end

    def notification
      SuperReceptionist::Notification.new(self)
    end

    def number
      SuperReceptionist::Number.new(self)
    end

    def phonebook
      SuperReceptionist::Phonebook.new(self)
    end

    def plan
      SuperReceptionist::Plan.new(self)
    end

    def sound
      SuperReceptionist::Sound.new(self)
    end

    def task
      SuperReceptionist::Task.new(self)
    end

  end

  class << self
    attr_accessor :channel,
                  :api_host,
                  :api_version,
                  :protocol,
                  :test_mode,
                  :x_api_key,
                  :authorization

    def configure
      yield self
      true
    end
    alias :config :configure

    def submit(method, url, parameters={})
      JSON.parse(Client.new(url).send(method, parameters))
    end
  end
end
