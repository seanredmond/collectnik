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

    # Retrieves an item by uuid.
    # 
    # @param id [String] The uuid of the item
    # @param params [Hash] A Hash of parameters to be passed to the API. Item 
    #   resources are retrieved with titles by default, which is the opposite 
    #   of the default behavior of the `items` endpoint. To retrieve the item 
    #   resources without titles, set use `'withTitles' => 'no'
    #
    # @return [Items] An {Items} object.
    def item(id, params = {})
      # Get titles in items by default
      params = {'withTitles' => 'yes'}.merge(params)
      
      Collectnik::Item.new(self, get_endpoint(id, params))
    end

    def local(type, id, params = {})
      # TODO: Test for valid types, but what are they?
      local_type = "local_#{type}"
      get_endpoint("#{local_type}/#{id}", params)
    end

    def mods(id, params = {})
      Collectnik::Mods.new(self, get_endpoint("mods/#{id}", params))
    end

    def search(term, params = {})
      params.merge!({'q' => term})
      Collectnik::SearchResults.new(self, get_endpoint('search', params))
    end

    protected
    def get_endpoint(path, params)
      path = "#{@@base}/#{@@version_path}/items/#{path}"
      response = @conn.get path, params
      JSON.parse(response.body)

      # TODO: Handle errors like
      #    Faraday::Error::TimeoutError
    end
  end
end