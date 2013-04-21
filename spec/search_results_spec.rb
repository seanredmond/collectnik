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

    describe "#next" do
      before :each do
        @client.stub(:get_endpoint).and_return(SEARCH_BIRDS2)
      end

      it "requests the next page of results" do
        @client.should_receive(:get_endpoint).
          with('search', {'q'=>'birds', 'per_page'=>10, 'page'=>2}) {SEARCH_BIRDS2}
        @results.next
      end

      it "returns the next page of results as an Array of Items" do
        @results.next.should be_an_instance_of Array
      end

      it "returns an Array of Items" do
        @results.next.first.should be_an_instance_of Collectnik::Item
      end

      it "updates the stored results" do
        @results.next.first.uuid.should 
          be '510d47da-c080-a3d9-e040-e00a18064a99'
        @results.results.first.uuid.should 
          be '510d47da-c080-a3d9-e040-e00a18064a99'
      end

      it "updates the current page" do
        @results.next
        @results.current_page.should be 2
      end
    end
  end

  context "with no results" do
    before :each do
      @results = Collectnik::SearchResults.new(@client, SEARCH_NO_RESULTS)
    end

    describe "#num_results" do
      it "returns 0" do
        @results.num_results.should eq 0
      end
    end

    describe "#current_page" do
      it "returns the correct page" do
        @results.current_page.should eq 0
      end
    end

    describe "#total_pages" do
      it "returns the corect number of pages of results" do
        @results.total_pages.should eq 0
      end
    end

    describe "#per_page" do
      it "returns the correct number of results per page" do
        @results.per_page.should eq 0
      end
    end

    describe "#results" do
      it "returns an Array" do
        @results.results.should be_an_instance_of Array
      end

      it "returns an empty Array" do
        @results.results.should be_empty
      end
    end

    describe "#next" do
      it "raises StopIteration" do
        expect { @results.next }.to raise_error(StopIteration)
      end
    end
  end
end