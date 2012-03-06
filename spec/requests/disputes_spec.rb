require 'spec_helper'

describe "Disputes" do
  describe "GET /disputes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get disputes_path
      response.status.should be(200)
    end
  end
end
