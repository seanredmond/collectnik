module Collectnik
  class Mods
    # MODS = Metadata Object Description Scheme
    def initialize(client, data)
      @data = data['nyplAPI']['response']['mods']
      @client = client
    end

    def title
      @data['titleInfo']
    end

    def resource_type
      @data['typeOfResource']['$']
    end
  end
end