module Collectnik
  # Handles all communication with the API server
  class Client

    @@base = 'http://api.repo.nypl.org/api'
    @@version_path = 'v1'

    def initialize(api_key)
      @api_key = api_key
      @conn = Faraday.new
      @conn.headers = {
        'Authorization' => %Q\Token token="#{@api_key}"\,
        'User-Agent' => 'Collectnik (https://github.com/seanredmond/collectnik)'
      }
    end

    def items(id, params = {})
      get_endpoint(id, {})
    end

    def local(type, id, params = {})
      # TODO: Test for valid types, but what are they?
      local_type = "local_#{type}"
      get_endpoint("#{local_type}/#{id}", params)
    end

    def mods(id, params = {})
      get_endpoint("mods/#{id}", params)
    end

    def search(term, params = {})
      params.merge!({'q' => term})
      get_endpoint('search', params)
    end

    protected
    def get_endpoint(path, params)
      path = "#{@@base}/#{@@version_path}/items/#{path}"
      response = @conn.get path, params
      JSON.parse(response.body)
    end
  end
end