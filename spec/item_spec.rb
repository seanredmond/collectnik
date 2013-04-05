# encoding: utf-8

require "spec_helper"

describe Collectnik::Item do
  before :each do
    @client = Collectnik::Client.new('12345')
    @item = Collectnik::Item.new(@client, ITEM_1582665)
  end

  describe "#uuid" do
    it "returns the id" do
      @item.uuid.should eq '510d47e3-6c3e-a3d9-e040-e00a18064a99'
    end
  end

  describe "#title" do
    it "returns the title" do
      @item.title.should eq 'Fra Angelico, Windsor, 163 verso. [St. Lawrence, a woman holding a child, and a youth with clasped hands.]'
    end
  end

  describe "#link" do
    it "returns the link" do
      @item.link.should eq 'http://digitalgallery.nypl.org/nypldigital/id?1582665'
    end
  end

  describe "#image_id" do
    it "returns the image_id" do
      @item.image_id.should eq '1582665'
    end
  end

  describe "#mods" do
    before :each do
      @client.stub(:get_endpoint) {MODS_1582665}
    end

    it "returns a Mods object" do
      @item.mods.should be_an_instance_of Collectnik::Mods
    end
  end
end
