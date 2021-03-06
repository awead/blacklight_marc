require 'spec_helper'

describe BlacklightMarcHelper do
  let(:one) { SolrDocument.new }
  let(:two) { SolrDocument.new }
  describe "render_refworks_texts" do
    before do
      one.stub(:export_as_refworks_marc_txt => 'one')
      two.stub(:export_as_refworks_marc_txt => 'two')
    end
    it "should render_refworks_texts" do
      expect(helper.render_refworks_texts([one, two])).to eq "one\ntwo\n"

    end
  end

  describe "render_endnote_texts" do
    before do
      one.stub(:export_as_endnote => 'one')
      two.stub(:export_as_endnote => 'two')
    end
    it "should render_endnote_texts" do
      expect(helper.render_endnote_texts([one, two])).to eq "one\ntwo\n"
    end
  end
end
