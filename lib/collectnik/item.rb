module Collectnik
  class Item
    def initialize(client, data)
      @data = data
      @client = client
    end

    def uuid
      @data['uuid']
    end

    def title
      @data['title']
    end

    def link
      @data['itemLink']
    end

    def image_id
      @data['imageID']
    end

    def mods
      Collectnik::Mods.new(@client, @client.mods(uuid))
    end
  end
end