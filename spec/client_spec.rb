# encoding: utf-8

require "spec_helper"

describe Collectnik::Client do
  before :each do
    @client = Collectnik::Client.new('12345')
  end

  describe "#seach" do
    before :each do
      @client.stub(:get_endpoint) {SEARCH_BIRDS}
      @results = @client.search('birds')
    end

    it "returns a SearchResults object" do
      @results.should be_an_instance_of Collectnik::SearchResults
    end
  end

  describe "#item" do
    before :each do
      @client.stub(:get_endpoint) {ITEMS_5fa75050}
      @items = @client.item('12345')
    end

    it "returns an Items object" do
      @items.should be_an_instance_of Collectnik::Item
    end
  end

  describe "#mods" do
    before :each do
      @client.stub(:get_endpoint) {MODS_1582665}
      @mods = @client.mods('12345')
    end

    it "returns a Mods object" do
      @mods.should be_an_instance_of Collectnik::Mods
    end
  end
end
