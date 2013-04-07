# encoding: utf-8

require "spec_helper"

describe Collectnik::SearchResults do
  before :each do
    @client = Collectnik::Client.new('12345')
  end

  context "with a simple search" do
    before :each do
      @results = Collectnik::SearchResults.new(@client, SEARCH_BIRDS)
    end

    describe "#num_results" do
      it "returns the correct count" do
        @results.num_results.should eq 11985
      end
    end

    describe "#current_page" do
      it "returns the correct page" do
        @results.current_page.should eq 1
      end
    end

    describe "#total_pages" do
      it "returns the corect number of pages of results" do
        @results.total_pages.should eq 1199
      end
    end

    describe "#per_page" do
      it "returns the correct number of results per page" do
        @results.per_page.should eq 10
      end
    end

    describe "#search_text" do
      it "returns the correct search_text" do
        @results.search_text.should eq 'birds'
      end
    end

    describe "#results" do
      before :each do
        @results_list = @results.results
      end

      it "should be an Array" do
        @results_list.should be_an_instance_of Array
      end

      it "should be an Array of Item objects" do
        @results_list.first.should be_an_instance_of Collectnik::Item
      end
    end
  end
end