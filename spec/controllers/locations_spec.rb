require 'spec_helper'

describe LocationsController do
  describe "GET" do
    it "should return 200" do
      get 'index'
      expect(response).to be_success
    end
  end
end