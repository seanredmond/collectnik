module Collectnik
  class SearchResults
    def initialize(client, data)
      @data = data['nyplAPI']['response']
      @request = data['nyplAPI']['request']
      @client = client
      @results = nil
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

    def search_text
      @request['search_text']
    end

    def results
      if @results == nil
        @results = @data['result'].map{|i| Collectnik::Item.new(@client, i)}
      end
      
      @results
    end
  end
end
