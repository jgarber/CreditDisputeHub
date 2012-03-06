require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :department => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :address => "MyString",
      :email => "MyString",
      :category => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path(@company), :method => "post" do
      assert_select "input#company_department", :name => "company[department]"
      assert_select "input#company_phone", :name => "company[phone]"
      assert_select "input#company_fax", :name => "company[fax]"
      assert_select "input#company_address", :name => "company[address]"
      assert_select "input#company_email", :name => "company[email]"
      assert_select "input#company_category", :name => "company[category]"
    end
  end
end
