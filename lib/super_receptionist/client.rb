module SuperReceptionist
  class Client
    attr_reader :url

    def initialize(url)
      @url = url
    end

    def get(params = {})
      @url += "?#{URI.encode_www_form(params)}" if params.any?
      RestClient.get(@url, headers=header)
    end

    def post(params = {})
      RestClient.post(@url, params, headers=header)
    end

    def put(params = {})
      RestClient.put(@url, params, headers=header)
    end

    def delete(params = {})
      RestClient.delete(@url, params, headers=header)
    end

    private

    def header
      { 'Content-Type' => 'application/json',
        'channel' => SuperReceptionist.channel,
        'x-api-key' => SuperReceptionist.x_api_key,
        'authorization' => SuperReceptionist.authorization
      }
    end
  end
end
