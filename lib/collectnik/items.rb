module Collectnik
  class Items
    def initialize(client, data)
      @data = data['nyplAPI']['response']
      @request = data['nyplAPI']['request']
      @client = client
      @items = nil
    end

    def uuid
      @request['uuid']
    end

    def num_results
      # The API should return this value as an int
      @data['numResults'].to_i
    end

    def current_page
      # The API should return this value as an int
      @request['page'].to_i
    end

    def total_pages
      # The API should return this value as an int
      @request['totalPages'].to_i
    end

    def per_page
      # The API should return this value as an int
      @request['perPage'].to_i
    end

    def has_captures?
      @data['capture'] != nil
    end

    def items
      if @items == nil
        if has_captures? == false
          @items = []
        else
          @items = @data['capture'].map{|i| Collectnik::Item.new(@client, i)}
        end
      end
      
      @items
    end
  end
end
