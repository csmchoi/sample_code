require 'spec_helper'

describe Location do
  it "is valid with name, latitude, and longitude" do
    location = Location.new(
        name:       'Verve Mobile',
        latitude:   '33.1243208',
        longitude:  '-117.32582479999996')
    expect(location).to be_valid
  end
end
