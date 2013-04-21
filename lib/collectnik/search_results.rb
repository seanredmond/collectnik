# encoding: utf-8

module Collectnik
  # The results of a search as returned by {Client#search} See the 
  # {http://api.repo.nypl.org/api_documentation#api_method_3_doc API 
  # Documentation} for the format of search strings.
  #
  # Results are paginated with 10 items per page by default. This can be changed
  # by passing a :per_page parameter the the {Client#search} method. The first
  # (or current) page of results can be retrieved via {#results}, following 
  # pages via {#next}
  class SearchResults
    def initialize(client, data)
      @data = data['nyplAPI']['response']
      @request = data['nyplAPI']['request']
      @client = client
      @results = nil
    end

    # @return [Int] The number of results from the search.
    def num_results
      # The API should return this value as an int
      @data['numResults'].to_i
    end

    # @return [Int] The current page within the set of results.
    def current_page
      # The API should return this value as an int
      @request['page'].to_i
    end

    # @return [Int] The number of pages of results available.
    def total_pages
      # The API should return this value as an int
      @request['totalPages'].to_i
    end

    # @return [Int] The number of items requested per pages.
    def per_page
      # The API should return this value as an int
      @request['perPage'].to_i
    end

    # @return [Int] The text of the search that was performed.
    def search_text
      @request['search_text']
    end

    # @return [Array<Item>] The current page of results.
    #
    # If the search returned no results, this method returns an empty array.
    def results
      if @results == nil
        @results = @data.fetch('result', []).
          map{|i| Collectnik::Item.new(@client, i)}
      end
      
      @results
    end

    # Get the next page of results
    #
    # @return [Array<Item>] The next page of results
    # @raise [StopIteration] if all pages have been exhausted.
    #
    # This method both returns the next page and sets the next page as the 
    # current one. Trying to retrieve a page beyond the last page will result in
    # a {StopIteration} exception.
    def next
      if current_page + 1 <= total_pages
        page(current_page + 1)
      else
        raise StopIteration
      end
    end

    # Get the specific page of results
    #
    # @param p [Int] The page to retrieve.
    # @return [Array<Item>] The next page of results
    # @raise [BadPageError] if the page requested is outside the range of pages
    #   in the result set.
    #
    # This method both returns the requested page and sets that page as the 
    # current one. Trying to retrieve a page outside the range of pages in the
    # result set will raise a BadPageError, as will requesting any page from an
    # empty result set.
    def page(p)
      if num_results > 0
        if p > 0 && p <= total_pages
          params = {
            'q' =>  search_text,
            'per_page' => per_page,
            'page' => p
          }
          page = @client.get_endpoint('search', params)
          initialize(@client, page)
          @results = @data['result'].map{|i| Collectnik::Item.new(@client, i)}
          @results
        else
          raise BadPageError, 
            "Invalid page requested. Current result set contains pages 1–#{total_pages}"
        end
      else
        raise BadPageError, "Invalid page requested. Current result set is empty"
      end
    end
  end
end
