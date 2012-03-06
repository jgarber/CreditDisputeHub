require 'spec_helper'

describe "disputes/edit" do
  before(:each) do
    @dispute = assign(:dispute, stub_model(Dispute,
      :title => "MyString",
      :company_id => "",
      :disputed_amount => "MyString",
      :description => "MyText",
      :private => false
    ))
  end

  it "renders the edit dispute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => disputes_path(@dispute), :method => "post" do
      assert_select "input#dispute_title", :name => "dispute[title]"
      assert_select "input#dispute_company_id", :name => "dispute[company_id]"
      assert_select "input#dispute_disputed_amount", :name => "dispute[disputed_amount]"
      assert_select "textarea#dispute_description", :name => "dispute[description]"
      assert_select "input#dispute_private", :name => "dispute[private]"
    end
  end
end
