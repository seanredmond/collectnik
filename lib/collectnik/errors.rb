module Collectnik
  # Parent class for all Collectnik errors
  class CollectnikError < StandardError
  end

  # Indicates a invalid page has been requested from a result set
  class BadPageError < CollectnikError
  end
end