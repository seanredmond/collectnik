# encoding: utf-8

require "spec_helper"

describe Collectnik::Items do
  before :each do
    @client = Collectnik::Client.new('12345')
    @items = Collectnik::Items.new(@client, ITEMS_5fa75050)
  end

  describe "#num_results" do
    it "returns the correct count" do
      @items.num_results.should eq 125
    end
  end

  describe "#current_page" do
    it "returns the correct page" do
      @items.current_page.should eq 1
    end
  end

  describe "#total_pages" do
    it "returns the corect number of pages of results" do
      @items.total_pages.should eq 13
    end
  end

  describe "#per_page" do
    it "returns the correct number of results per page" do
      @items.per_page.should eq 10
    end
  end

  describe "#items" do
    before :each do
      @item_list = @items.items
    end

    it "should be an Array" do
      @item_list.should be_an_instance_of Array
    end

    it "should be an Array of Item objects" do
      @item_list.first.should be_an_instance_of Collectnik::Item
    end
  end
end

