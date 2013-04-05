# encoding: utf-8

require "spec_helper"

describe Collectnik::Client do
  before :each do
    @client = Collectnik::Client.new('12345')
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
