require 'spec_helper'

describe "disputes/index" do
  before(:each) do
    assign(:disputes, [
      stub_model(Dispute,
        :title => "Title",
        :company_id => "",
        :disputed_amount => "Disputed Amount",
        :description => "MyText",
        :private => false
      ),
      stub_model(Dispute,
        :title => "Title",
        :company_id => "",
        :disputed_amount => "Disputed Amount",
        :description => "MyText",
        :private => false
      )
    ])
  end

  it "renders a list of disputes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Disputed Amount".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
