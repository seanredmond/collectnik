# Collectnik

[![Build Status](https://travis-ci.org/seanredmond/collectnik.png)](https://travis-ci.org/seanredmond/collectnik)

Ruby client for the [NYPL Digital Collections API](http://api.repo.nypl.org/api_documentation)

## Installation

Add this line to your application's Gemfile:

    gem 'collectnik'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install collectnik

## Usage

    require "collectnik"

    # Initialize a client
    client = Collectnik::Client.new('yourtoken')

    # Make a search
    birds = client.search('birds')

    # Work with the results
    birds.results.first.title

    # Return Captures for a UUID
    client.items('5fa75050-c6c7-012f-e24b-58d385a7bc34')

    # Return UUID for local identifier
    client.local('hades','1017240')

    # Search in MODS field
    client.search('flying', {'field' => 'topic'})

    # Search across all MODS fields
    client.search('birds')

    # Return MODS record for a capture UUID
    client.mods('510d47e2-8e15-a3d9-e040-e00a18064a99')

## TODO

The above methods all just return hashes created from JSON responses. They 
should instead return objects with any methods necessary to make accessing the 
data more easy.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
