# encoding: utf-8

require "spec_helper"

describe Collectnik::Mods do
  before :each do
    @mods = Collectnik::Mods.new(nil, MODS_1582665)
  end

  describe '#resource_type' do
    it "has the correct type" do
      @mods.resource_type.should eq 'still image'
    end
  end

  describe "#titles" do
    it "returns an Array" do
      @mods.title.should be_an_instance_of Array
    end
  end
end
