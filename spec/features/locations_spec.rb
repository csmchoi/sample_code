require 'spec_helper'

describe "Location Page" do
  describe "Upload File" do
    it "can upload a TSV file" do
      visit "/"
      attach_file 'file',"#{Rails.root}/spec/fixtures/files/offers_poi.tsv"
      click_button "Import"
    end
  end
end
